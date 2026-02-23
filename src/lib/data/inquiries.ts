import type { InquiryInput } from "./types";

// モック実装: Supabase移行時にここをSupabase insertに差し替え
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

  // モック: コンソールに出力
  console.log("問い合わせ受信:", input);

  return { success: true };
}
