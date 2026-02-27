#!/usr/bin/env python3
"""
岩手県・山形県・青森県の斎場データをSupabase REST APIに投入するスクリプト。
SQLファイルをパースしてJSON形式に変換し、10件ずつバッチでPOSTする。
"""

import json
import subprocess
import re
import sys

SUPABASE_URL = "https://zlcwbcajhrtndockwqcb.supabase.co/rest/v1/venues"
API_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpsY3diY2FqaHJ0bmRvY2t3cWNiIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc3MjE1NDgzNiwiZXhwIjoyMDg3NzMwODM2fQ.4GcRFiM40y214WcuHnKuqp_Ut1LMt12AgonXNv5MibY"


def insert_batch(venues):
    """10件ずつバッチでPOSTする"""
    data_json = json.dumps(venues, ensure_ascii=False)
    result = subprocess.run([
        "curl", "-s", "-o", "/dev/null", "-w", "%{http_code}",
        "-X", "POST", SUPABASE_URL,
        "-H", f"apikey: {API_KEY}",
        "-H", f"Authorization: Bearer {API_KEY}",
        "-H", "Content-Type: application/json",
        "-H", "Prefer: return=minimal",
        "-H", "User-Agent: Mozilla/5.0",
        "-d", data_json
    ], capture_output=True, text=True)
    return result.stdout.strip()


def parse_sql_file(filepath):
    """SQLファイルをパースしてvenue辞書のリストを返す"""
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    venues = []

    # INSERT文をパース（ON CONFLICT付きの新形式に対応）
    # 各INSERT文のVALUESパートを抽出
    pattern = r"INSERT INTO venues\s*\([^)]+\)\s*VALUES\s*\((.+?)\)\s*(?:ON CONFLICT|;)"
    # 複数行にまたがるためDOTALLを使用
    matches = re.findall(pattern, content, re.DOTALL)

    if not matches:
        # 旧形式（ON CONFLICTなし）を試す
        # 各INSERT文を個別に検出
        insert_pattern = r"INSERT INTO venues\s*\([^)]+\)\s*VALUES\s*\n?\((.+?)\);"
        matches = re.findall(insert_pattern, content, re.DOTALL)

    if not matches:
        print(f"  警告: {filepath} からデータを抽出できませんでした。直接パースを試みます...")
        return parse_sql_direct(filepath)

    for match in matches:
        venue = parse_values(match.strip())
        if venue:
            venues.append(venue)

    return venues


def parse_sql_direct(filepath):
    """SQLファイルを直接パースする（フォールバック）"""
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    venues = []

    # INSERT ... VALUES (...) ON CONFLICT パターン
    # 各INSERT文を検出
    blocks = content.split("INSERT INTO venues")
    for block in blocks[1:]:  # 最初の空ブロックをスキップ
        # VALUES部分を抽出
        vals_match = re.search(r"VALUES\s*\((.+?)\)\s*(?:ON CONFLICT|;)", block, re.DOTALL)
        if vals_match:
            venue = parse_values(vals_match.group(1).strip())
            if venue:
                venues.append(venue)

    return venues


def parse_values(values_str):
    """VALUES句の文字列をパースしてdict形式に変換"""
    # カラム順序（マイグレーションの定義順）
    columns = [
        'name', 'slug', 'venue_type', 'description', 'address',
        'prefecture_slug', 'city_slug', 'latitude', 'longitude',
        'nearest_station', 'station_walk_minutes', 'capacity_max',
        'hall_count', 'has_crematorium', 'parking_count',
        'facilities', 'price_plans', 'features',
        'operator_name', 'rating_avg', 'review_count'
    ]

    try:
        values = smart_split_values(values_str)
        if len(values) != len(columns):
            print(f"  警告: カラム数不一致 (期待: {len(columns)}, 実際: {len(values)}) - スキップ")
            return None

        venue = {}
        for i, col in enumerate(columns):
            val = values[i].strip()

            if col in ('latitude', 'longitude', 'rating_avg'):
                venue[col] = float(val)
            elif col in ('station_walk_minutes', 'capacity_max', 'hall_count', 'parking_count', 'review_count'):
                venue[col] = int(val)
            elif col == 'has_crematorium':
                venue[col] = val.lower() == 'true'
            elif col == 'facilities':
                # JSON/JSONB型 - ::jsonbキャストを除去してパース
                json_str = val.strip("'")
                json_str = re.sub(r"'::jsonb$", "", json_str)
                json_str = json_str.strip("'")
                venue[col] = json.loads(json_str)
            elif col == 'price_plans':
                json_str = val.strip("'")
                json_str = re.sub(r"'::jsonb$", "", json_str)
                json_str = json_str.strip("'")
                venue[col] = json.loads(json_str)
            elif col == 'features':
                # ARRAY形式 またはPostgreSQL配列リテラル
                if val.startswith('ARRAY['):
                    # ARRAY['a', 'b', 'c'] 形式
                    arr_str = val[6:-1]  # ARRAY[ と ] を除去
                    venue[col] = [s.strip().strip("'") for s in arr_str.split("',")]
                    venue[col] = [s.strip("'") for s in venue[col]]
                elif val.startswith("'{") or val.startswith('"{'):
                    # '{"a","b","c"}' 形式
                    arr_str = val.strip("'\"")
                    arr_str = arr_str.strip("{}")
                    venue[col] = [s.strip().strip('"') for s in arr_str.split(",")]
                else:
                    venue[col] = []
            elif col == 'venue_type':
                venue[col] = val.strip("'")
            else:
                # 文字列型
                venue[col] = val.strip("'")

        return venue
    except Exception as e:
        print(f"  パースエラー: {e}")
        return None


def smart_split_values(values_str):
    """カンマで区切るが、文字列リテラル・JSON内のカンマは無視する"""
    result = []
    current = ""
    depth_paren = 0
    depth_bracket = 0
    depth_brace = 0
    in_string = False
    escape_next = False
    i = 0

    while i < len(values_str):
        ch = values_str[i]

        if escape_next:
            current += ch
            escape_next = False
            i += 1
            continue

        if ch == '\\':
            escape_next = True
            current += ch
            i += 1
            continue

        if ch == "'" and not in_string:
            in_string = True
            current += ch
            i += 1
            # 次の文字が'なら空文字列のエスケープ
            continue

        if ch == "'" and in_string:
            # 次の文字も'ならエスケープされたクォート
            if i + 1 < len(values_str) and values_str[i + 1] == "'":
                current += ch + "'"
                i += 2
                continue
            else:
                in_string = False
                current += ch
                i += 1
                continue

        if in_string:
            current += ch
            i += 1
            continue

        if ch == '(':
            depth_paren += 1
        elif ch == ')':
            depth_paren -= 1
        elif ch == '[':
            depth_bracket += 1
        elif ch == ']':
            depth_bracket -= 1
        elif ch == '{':
            depth_brace += 1
        elif ch == '}':
            depth_brace -= 1

        if ch == ',' and depth_paren == 0 and depth_bracket == 0 and depth_brace == 0:
            result.append(current.strip())
            current = ""
        else:
            current += ch

        i += 1

    if current.strip():
        result.append(current.strip())

    return result


def count_venues(prefecture_slug):
    """SupabaseからPrefecture別の件数を取得"""
    result = subprocess.run([
        "curl", "-s",
        f"{SUPABASE_URL}?prefecture_slug=eq.{prefecture_slug}&select=id",
        "-H", f"apikey: {API_KEY}",
        "-H", f"Authorization: Bearer {API_KEY}",
        "-H", "Prefer: count=exact",
        "-H", "Range: 0-0",
        "-H", "User-Agent: Mozilla/5.0",
        "-I"
    ], capture_output=True, text=True)

    # Content-Rangeヘッダーから件数を取得
    for line in result.stdout.split('\n'):
        if 'content-range' in line.lower():
            # Content-Range: 0-0/123 形式
            match = re.search(r'/(\d+)', line)
            if match:
                return int(match.group(1))

    # フォールバック: GETで取得
    result2 = subprocess.run([
        "curl", "-s",
        f"{SUPABASE_URL}?prefecture_slug=eq.{prefecture_slug}&select=id",
        "-H", f"apikey: {API_KEY}",
        "-H", f"Authorization: Bearer {API_KEY}",
        "-H", "User-Agent: Mozilla/5.0"
    ], capture_output=True, text=True)
    try:
        data = json.loads(result2.stdout)
        return len(data)
    except:
        return -1


def main():
    base_dir = "/Users/riku/Desktop/Claude Code実行フォルダ/SEOプロジェクト/終活サイト/portal/supabase/snippets"

    files = [
        ("iwate", f"{base_dir}/seed_venues_iwate.sql"),
        ("yamagata", f"{base_dir}/seed_venues_yamagata.sql"),
        ("aomori", f"{base_dir}/seed_venues_aomori.sql"),
    ]

    for prefecture, filepath in files:
        print(f"\n{'='*50}")
        print(f"処理中: {prefecture}")
        print(f"{'='*50}")

        venues = parse_sql_file(filepath)
        print(f"  パース結果: {len(venues)}件")

        if not venues:
            print(f"  エラー: データが0件です。スキップします。")
            continue

        # 10件ずつバッチ投入
        success = 0
        errors = 0
        for i in range(0, len(venues), 10):
            batch = venues[i:i+10]
            status = insert_batch(batch)
            if status == '201':
                success += len(batch)
                print(f"  バッチ {i//10 + 1}: {len(batch)}件 投入成功 (HTTP {status})")
            elif status == '409':
                # 重複エラー - ON CONFLICTが必要だが、REST APIでは upsertを使用
                print(f"  バッチ {i//10 + 1}: 重複あり (HTTP {status}), upsertで再試行...")
                status2 = insert_batch_upsert(batch)
                if status2 == '201' or status2 == '200':
                    success += len(batch)
                    print(f"    upsert成功 (HTTP {status2})")
                else:
                    errors += len(batch)
                    print(f"    upsertも失敗 (HTTP {status2})")
            else:
                errors += len(batch)
                print(f"  バッチ {i//10 + 1}: エラー (HTTP {status})")
                # エラー詳細を取得
                detail = insert_batch_detail(batch)
                print(f"    詳細: {detail[:200]}")

        print(f"\n  完了: 成功={success}, エラー={errors}")

        # 最終件数確認
        total = count_venues(prefecture)
        print(f"  Supabase上の{prefecture}県の総件数: {total}件")


def insert_batch_upsert(venues):
    """upsertモードで投入（slug重複時はスキップ）"""
    data_json = json.dumps(venues, ensure_ascii=False)
    result = subprocess.run([
        "curl", "-s", "-o", "/dev/null", "-w", "%{http_code}",
        "-X", "POST", SUPABASE_URL,
        "-H", f"apikey: {API_KEY}",
        "-H", f"Authorization: Bearer {API_KEY}",
        "-H", "Content-Type: application/json",
        "-H", "Prefer: return=minimal,resolution=ignore-duplicates",
        "-H", "User-Agent: Mozilla/5.0",
        "-d", data_json
    ], capture_output=True, text=True)
    return result.stdout.strip()


def insert_batch_detail(venues):
    """エラー詳細を取得するためにレスポンスボディを返す"""
    data_json = json.dumps(venues, ensure_ascii=False)
    result = subprocess.run([
        "curl", "-s",
        "-X", "POST", SUPABASE_URL,
        "-H", f"apikey: {API_KEY}",
        "-H", f"Authorization: Bearer {API_KEY}",
        "-H", "Content-Type: application/json",
        "-H", "Prefer: return=minimal",
        "-H", "User-Agent: Mozilla/5.0",
        "-d", data_json
    ], capture_output=True, text=True)
    return result.stdout.strip()


if __name__ == "__main__":
    main()
