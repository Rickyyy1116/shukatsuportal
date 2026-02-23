"use client";

import { useState } from "react";
import type { Category, Area, InquiryInput, InquiryType } from "@/lib/data/types";
import { submitInquiry } from "@/lib/data";

/** 問い合わせフォームのProps */
interface InquiryFormProps {
  /** カテゴリ一覧（selectの選択肢） */
  categories: Category[];
  /** 都道府県一覧（selectの選択肢） */
  prefectures: Area[];
  /** デフォルトで選択するカテゴリスラッグ */
  defaultCategory?: string;
  /** デフォルトで選択する事業者スラッグ */
  defaultProvider?: string;
}

/** バリデーションエラーの型 */
interface FormErrors {
  name?: string;
  email?: string;
}

/** 問い合わせフォームコンポーネント */
export default function InquiryForm({
  categories,
  prefectures,
  defaultCategory = "",
  defaultProvider = "",
}: InquiryFormProps) {
  // フォームの入力値
  const [inquiryType, setInquiryType] = useState<InquiryType>("consultation");
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [phone, setPhone] = useState("");
  const [prefectureSlug, setPrefectureSlug] = useState("");
  const [categorySlug, setCategorySlug] = useState(defaultCategory);
  const [message, setMessage] = useState("");

  // 送信状態管理
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [isCompleted, setIsCompleted] = useState(false);
  const [errors, setErrors] = useState<FormErrors>({});
  const [submitError, setSubmitError] = useState("");

  /** バリデーション */
  const validate = (): boolean => {
    const newErrors: FormErrors = {};

    if (!name.trim()) {
      newErrors.name = "お名前を入力してください";
    }

    if (!email.trim()) {
      newErrors.email = "メールアドレスを入力してください";
    } else if (!email.includes("@") || !email.includes(".")) {
      newErrors.email = "有効なメールアドレスを入力してください";
    }

    setErrors(newErrors);
    return Object.keys(newErrors).length === 0;
  };

  /** フォーム送信処理 */
  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();

    // バリデーション
    if (!validate()) return;

    setIsSubmitting(true);
    setSubmitError("");

    try {
      const input: InquiryInput = {
        type: inquiryType,
        name: name.trim(),
        email: email.trim(),
        phone: phone.trim(),
        prefectureSlug,
        categorySlug,
        providerIds: defaultProvider ? [defaultProvider] : [],
        message: message.trim(),
      };

      // モック: submitInquiryを呼び出し（コンソール出力のみ）
      const result = await submitInquiry(input);

      if (result.success) {
        setIsCompleted(true);
      } else {
        setSubmitError(result.error ?? "送信中にエラーが発生しました");
      }
    } catch {
      setSubmitError("送信中にエラーが発生しました。時間をおいて再度お試しください。");
    } finally {
      setIsSubmitting(false);
    }
  };

  // 送信完了画面
  if (isCompleted) {
    return (
      <div className="rounded-xl border border-green-200 bg-green-50 p-8 text-center">
        <div className="mx-auto mb-4 flex h-16 w-16 items-center justify-center rounded-full bg-green-100">
          <svg
            className="h-8 w-8 text-green-600"
            fill="none"
            viewBox="0 0 24 24"
            strokeWidth={2}
            stroke="currentColor"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              d="M4.5 12.75l6 6 9-13.5"
            />
          </svg>
        </div>
        <h3 className="text-xl font-bold text-gray-900">
          お問い合わせありがとうございます
        </h3>
        <p className="mt-3 text-gray-600">
          担当者より2営業日以内にご連絡いたします。
          <br />
          しばらくお待ちください。
        </p>
      </div>
    );
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-6">
      {/* お問い合わせ種別 */}
      <fieldset>
        <legend className="mb-3 text-sm font-bold text-gray-700">
          お問い合わせ種別
        </legend>
        <div className="flex flex-wrap gap-4">
          <label className="flex cursor-pointer items-center gap-2">
            <input
              type="radio"
              name="inquiryType"
              value="consultation"
              checked={inquiryType === "consultation"}
              onChange={() => setInquiryType("consultation")}
              className="h-4 w-4 text-primary-600 focus:ring-primary-500"
            />
            <span className="text-sm text-gray-700">無料相談</span>
          </label>
          <label className="flex cursor-pointer items-center gap-2">
            <input
              type="radio"
              name="inquiryType"
              value="document"
              checked={inquiryType === "document"}
              onChange={() => setInquiryType("document")}
              className="h-4 w-4 text-primary-600 focus:ring-primary-500"
            />
            <span className="text-sm text-gray-700">資料請求</span>
          </label>
        </div>
      </fieldset>

      {/* お名前 */}
      <div>
        <label htmlFor="inquiry-name" className="mb-1 block text-sm font-bold text-gray-700">
          お名前 <span className="text-red-500">*</span>
        </label>
        <input
          id="inquiry-name"
          type="text"
          value={name}
          onChange={(e) => {
            setName(e.target.value);
            if (errors.name) setErrors((prev) => ({ ...prev, name: undefined }));
          }}
          placeholder="山田 太郎"
          className={`w-full rounded-lg border px-4 py-3 text-sm text-gray-900 placeholder:text-gray-400 focus:outline-none focus:ring-2 ${
            errors.name
              ? "border-red-400 focus:border-red-500 focus:ring-red-200"
              : "border-gray-300 focus:border-primary-500 focus:ring-primary-200"
          }`}
        />
        {errors.name && (
          <p className="mt-1 text-sm text-red-500">{errors.name}</p>
        )}
      </div>

      {/* メールアドレス */}
      <div>
        <label htmlFor="inquiry-email" className="mb-1 block text-sm font-bold text-gray-700">
          メールアドレス <span className="text-red-500">*</span>
        </label>
        <input
          id="inquiry-email"
          type="email"
          value={email}
          onChange={(e) => {
            setEmail(e.target.value);
            if (errors.email) setErrors((prev) => ({ ...prev, email: undefined }));
          }}
          placeholder="example@email.com"
          className={`w-full rounded-lg border px-4 py-3 text-sm text-gray-900 placeholder:text-gray-400 focus:outline-none focus:ring-2 ${
            errors.email
              ? "border-red-400 focus:border-red-500 focus:ring-red-200"
              : "border-gray-300 focus:border-primary-500 focus:ring-primary-200"
          }`}
        />
        {errors.email && (
          <p className="mt-1 text-sm text-red-500">{errors.email}</p>
        )}
      </div>

      {/* 電話番号 */}
      <div>
        <label htmlFor="inquiry-phone" className="mb-1 block text-sm font-bold text-gray-700">
          電話番号 <span className="text-sm font-normal text-gray-400">（任意）</span>
        </label>
        <input
          id="inquiry-phone"
          type="tel"
          value={phone}
          onChange={(e) => setPhone(e.target.value)}
          placeholder="090-1234-5678"
          className="w-full rounded-lg border border-gray-300 px-4 py-3 text-sm text-gray-900 placeholder:text-gray-400 focus:border-primary-500 focus:outline-none focus:ring-2 focus:ring-primary-200"
        />
      </div>

      {/* お住まいのエリア */}
      <div>
        <label htmlFor="inquiry-prefecture" className="mb-1 block text-sm font-bold text-gray-700">
          お住まいのエリア
        </label>
        <select
          id="inquiry-prefecture"
          value={prefectureSlug}
          onChange={(e) => setPrefectureSlug(e.target.value)}
          className="w-full rounded-lg border border-gray-300 px-4 py-3 text-sm text-gray-700 focus:border-primary-500 focus:outline-none focus:ring-2 focus:ring-primary-200"
        >
          <option value="">都道府県を選択</option>
          {prefectures.map((pref) => (
            <option key={pref.id} value={pref.slug}>
              {pref.name}
            </option>
          ))}
        </select>
      </div>

      {/* 関心のあるカテゴリ */}
      <div>
        <label htmlFor="inquiry-category" className="mb-1 block text-sm font-bold text-gray-700">
          関心のあるカテゴリ
        </label>
        <select
          id="inquiry-category"
          value={categorySlug}
          onChange={(e) => setCategorySlug(e.target.value)}
          className="w-full rounded-lg border border-gray-300 px-4 py-3 text-sm text-gray-700 focus:border-primary-500 focus:outline-none focus:ring-2 focus:ring-primary-200"
        >
          <option value="">カテゴリを選択</option>
          {categories.map((cat) => (
            <option key={cat.id} value={cat.slug}>
              {cat.name}
            </option>
          ))}
        </select>
      </div>

      {/* ご相談内容 */}
      <div>
        <label htmlFor="inquiry-message" className="mb-1 block text-sm font-bold text-gray-700">
          ご相談内容
        </label>
        <textarea
          id="inquiry-message"
          value={message}
          onChange={(e) => setMessage(e.target.value)}
          rows={5}
          placeholder="ご相談内容をご記入ください"
          className="w-full rounded-lg border border-gray-300 px-4 py-3 text-sm text-gray-900 placeholder:text-gray-400 focus:border-primary-500 focus:outline-none focus:ring-2 focus:ring-primary-200"
        />
      </div>

      {/* 送信エラーメッセージ */}
      {submitError && (
        <div className="rounded-lg border border-red-200 bg-red-50 p-4">
          <p className="text-sm text-red-600">{submitError}</p>
        </div>
      )}

      {/* 送信ボタン */}
      <button
        type="submit"
        disabled={isSubmitting}
        className="w-full rounded-lg bg-primary-500 px-6 py-4 text-base font-bold text-white transition-colors hover:bg-primary-600 disabled:cursor-not-allowed disabled:opacity-50"
      >
        {isSubmitting ? (
          <span className="inline-flex items-center gap-2">
            <svg
              className="h-5 w-5 animate-spin"
              viewBox="0 0 24 24"
              fill="none"
            >
              <circle
                className="opacity-25"
                cx="12"
                cy="12"
                r="10"
                stroke="currentColor"
                strokeWidth="4"
              />
              <path
                className="opacity-75"
                fill="currentColor"
                d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z"
              />
            </svg>
            送信中...
          </span>
        ) : (
          "無料で相談する"
        )}
      </button>

      {/* 注記 */}
      <p className="text-center text-xs text-gray-400">
        ご入力いただいた個人情報は、お問い合わせ対応のみに使用いたします。
      </p>
    </form>
  );
}
