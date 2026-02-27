#!/usr/bin/env python3
"""
愛知県追加斎場データをSupabase REST APIに投入するスクリプト
10件ずつバッチでPOSTする
"""

import json
import subprocess
import sys
import time

SUPABASE_URL = "https://zlcwbcajhrtndockwqcb.supabase.co/rest/v1/venues"
API_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpsY3diY2FqaHJ0bmRvY2t3cWNiIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc3MjE1NDgzNiwiZXhwIjoyMDg3NzMwODM2fQ.4GcRFiM40y214WcuHnKuqp_Ut1LMt12AgonXNv5MibY"

def insert_batch(venues, batch_num):
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
    code = result.stdout.strip()
    print(f"  バッチ {batch_num}: HTTP {code} ({len(venues)}件)")
    if code != "201":
        print(f"  エラー詳細: {result.stderr}")
        # エラー時はレスポンスボディも取得
        result2 = subprocess.run([
            "curl", "-s",
            "-X", "POST", SUPABASE_URL,
            "-H", f"apikey: {API_KEY}",
            "-H", f"Authorization: Bearer {API_KEY}",
            "-H", "Content-Type: application/json",
            "-H", "Prefer: return=minimal",
            "-H", "User-Agent: Mozilla/5.0",
            "-d", data_json
        ], capture_output=True, text=True)
        print(f"  レスポンス: {result2.stdout[:500]}")
    return code == "201"

def run_all(all_venues):
    total = len(all_venues)
    print(f"合計 {total} 件を投入します")
    success = 0
    failed = 0
    batch_size = 10
    for i in range(0, total, batch_size):
        batch = all_venues[i:i+batch_size]
        batch_num = i // batch_size + 1
        if insert_batch(batch, batch_num):
            success += len(batch)
        else:
            failed += len(batch)
        time.sleep(0.5)
    print(f"\n完了: 成功 {success}件, 失敗 {failed}件")

if __name__ == "__main__":
    # データファイルを引数で受け取る
    if len(sys.argv) < 2:
        print("使い方: python3 insert_aichi_batch2.py <データファイル.json>")
        sys.exit(1)
    with open(sys.argv[1], "r") as f:
        venues = json.load(f)
    run_all(venues)
