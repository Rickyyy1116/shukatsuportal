"use server";

import { createSupabaseServer } from "../supabase/server";
import type { InquiryInput, InquiryType } from "./types";

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

// 問い合わせをleadsテーブルに保存（Server Action）
export async function submitInquiry(
  input: InquiryInput
): Promise<{ success: boolean; error?: string }> {
  // バリデーション
  if (!input.name.trim()) {
    return { success: false, error: "お名前を入力してください" };
  }
  if (!input.email.trim() || !input.email.includes("@")) {
    return { success: false, error: "有効なメールアドレスを入力してください" };
  }

  const supabase = createSupabaseServer();

  // エリアIDを取得（prefecture_slugからarea_idを解決）
  let areaId: string | null = null;
  if (input.prefectureSlug) {
    const { data: area } = await supabase
      .from("areas")
      .select("id")
      .eq("slug", input.prefectureSlug)
      .single();
    if (area) areaId = area.id;
  }

  // leadsテーブルにINSERT
  // lead_number, lead_fee はトリガーで自動生成される
  const { error } = await supabase.from("leads").insert({
    lead_type: toLeadType(input.type),
    user_name: input.name.trim(),
    user_email: input.email.trim(),
    user_phone: input.phone.trim() || null,
    area_id: areaId,
    category: input.categorySlug || "sougi",
    provider_id: input.providerIds.length > 0 ? input.providerIds[0] : null,
    message: input.message.trim() || null,
    status: "new",
  });

  if (error) {
    console.error("問い合わせ保存エラー:", error);
    return { success: false, error: "送信中にエラーが発生しました" };
  }

  return { success: true };
}
