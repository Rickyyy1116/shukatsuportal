"use server";

import { createSupabaseServer } from "../supabase/server";
import type { InquiryInput, InquiryType } from "./types";

// 有効なカテゴリスラッグ（DBのENUMと一致させる）
const VALID_CATEGORY_SLUGS = [
  "sougi", "ohaka", "kaigo", "souzoku", "ihinseiri", "hoken",
] as const;

// フォームのInquiryType → DBのlead_typeに変換
function toLeadType(type: InquiryType): string {
  switch (type) {
    case "consultation":
      return "inquiry";
    case "document":
      return "document_request";
    case "estimate":
      return "estimate";
    default:
      return "inquiry";
  }
}

// メールアドレスのバリデーション（RFC準拠の簡易版）
function isValidEmail(email: string): boolean {
  const pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return pattern.test(email) && email.length <= 320;
}

// 文字列の長さ制限付きサニタイズ
function sanitizeText(text: string, maxLength: number): string {
  return text.trim().slice(0, maxLength);
}

// UUID形式のバリデーション
function isValidUUID(id: string): boolean {
  return /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(id);
}

// 問い合わせをleadsテーブルに保存（Server Action）
export async function submitInquiry(
  input: InquiryInput
): Promise<{ success: boolean; error?: string }> {
  // 名前のバリデーション（長さ制限付き）
  const name = sanitizeText(input.name, 200);
  if (!name) {
    return { success: false, error: "お名前を入力してください" };
  }

  // メールアリデーション（RFC準拠パターン）
  const email = sanitizeText(input.email, 320);
  if (!isValidEmail(email)) {
    return { success: false, error: "有効なメールアドレスを入力してください" };
  }

  // 電話番号のバリデーション（長さ制限）
  const phone = sanitizeText(input.phone, 30) || null;

  // メッセージのバリデーション（長さ制限）
  const message = sanitizeText(input.message, 5000) || null;

  // カテゴリスラッグのバリデーション
  const categorySlug = input.categorySlug || "sougi";
  if (!(VALID_CATEGORY_SLUGS as readonly string[]).includes(categorySlug)) {
    return { success: false, error: "無効なカテゴリです" };
  }

  // providerIdのバリデーション（指定されている場合はUUID形式確認）
  const providerId = input.providerIds.length > 0 && isValidUUID(input.providerIds[0])
    ? input.providerIds[0]
    : null;

  const supabase = createSupabaseServer();

  // エリアIDを取得（prefecture_slugからarea_idを解決）
  let areaId: string | null = null;
  if (input.prefectureSlug) {
    const prefSlug = sanitizeText(input.prefectureSlug, 50);
    if (prefSlug) {
      const { data: area } = await supabase
        .from("areas")
        .select("id")
        .eq("slug", prefSlug)
        .eq("level", 1)
        .single();
      if (area) areaId = area.id;
    }
  }

  // leadsテーブルにINSERT
  // lead_number, lead_fee はトリガーで自動生成される
  const { error } = await supabase.from("leads").insert({
    lead_type: toLeadType(input.type),
    user_name: name,
    user_email: email,
    user_phone: phone,
    area_id: areaId,
    category: categorySlug,
    provider_id: providerId,
    message: message,
    status: "new",
  });

  if (error) {
    console.error("問い合わせ保存エラー:", error);
    return { success: false, error: "送信中にエラーが発生しました" };
  }

  return { success: true };
}
