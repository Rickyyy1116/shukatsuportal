"use client";

/** ステップ式見積もりフォーム（一問一答形式） */

import { useState } from "react";
import StepIndicator from "@/components/estimate/StepIndicator";
import { submitInquiry } from "@/lib/data/inquiries";

const STEP_LABELS = [
  "葬儀の種類",
  "参列予定人数",
  "ご希望のエリア",
  "葬儀の時期",
  "ご希望・ご要望",
  "お客様情報",
  "確認",
];

const FUNERAL_TYPES = [
  { value: "kasoshiki", label: "火葬式（直葬）", desc: "通夜・告別式を行わず、火葬のみ" },
  { value: "ichinichisou", label: "一日葬", desc: "通夜を省略し、告別式と火葬を1日で" },
  { value: "kazokusou", label: "家族葬", desc: "家族・親族中心の小規模な葬儀" },
  { value: "ippansou", label: "一般葬", desc: "従来型の通夜・告別式を行う葬儀" },
  { value: "undecided", label: "まだ決めていない", desc: "相談しながら決めたい" },
];

const GUEST_COUNTS = [
  { value: "under10", label: "〜10名" },
  { value: "10to30", label: "10〜30名" },
  { value: "30to50", label: "30〜50名" },
  { value: "over50", label: "50名以上" },
  { value: "undecided", label: "未定" },
];

const TIMINGS = [
  { value: "urgent", label: "至急（今日・明日）", desc: "すぐに手配が必要" },
  { value: "1week", label: "1週間以内", desc: "近日中に予定" },
  { value: "1month", label: "1ヶ月以内", desc: "少し先の予定" },
  { value: "later", label: "まだ先", desc: "事前準備として" },
  { value: "consult", label: "相談したい", desc: "まずは相談から" },
];

const PREFECTURES = [
  { value: "tokyo", label: "東京都" },
  { value: "kanagawa", label: "神奈川県" },
  { value: "saitama", label: "埼玉県" },
  { value: "chiba", label: "千葉県" },
  { value: "osaka", label: "大阪府" },
  { value: "aichi", label: "愛知県" },
  { value: "fukuoka", label: "福岡県" },
  { value: "hokkaido", label: "北海道" },
];

interface EstimateFormProps {
  initialVenueSlug?: string;
}

export default function EstimateForm({ initialVenueSlug }: EstimateFormProps) {
  const [step, setStep] = useState(1);
  const [funeralType, setFuneralType] = useState("");
  const [guestCount, setGuestCount] = useState("");
  const [prefecture, setPrefecture] = useState("");
  const [timing, setTiming] = useState("");
  const [message, setMessage] = useState("");
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [phone, setPhone] = useState("");
  const [errors, setErrors] = useState<Record<string, string>>({});
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [isCompleted, setIsCompleted] = useState(false);

  const totalSteps = 7;

  const next = () => setStep((s) => Math.min(s + 1, totalSteps));
  const prev = () => setStep((s) => Math.max(s - 1, 1));

  const validateStep6 = (): boolean => {
    const newErrors: Record<string, string> = {};
    const trimmedName = name.trim();
    const trimmedEmail = email.trim();
    if (!trimmedName) {
      newErrors.name = "お名前を入力してください";
    } else if (trimmedName.length > 200) {
      newErrors.name = "お名前は200文字以内で入力してください";
    }
    if (!trimmedEmail || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(trimmedEmail)) {
      newErrors.email = "有効なメールアドレスを入力してください";
    } else if (trimmedEmail.length > 320) {
      newErrors.email = "メールアドレスが長すぎます";
    }
    if (phone.trim().length > 30) {
      newErrors.phone = "電話番号は30文字以内で入力してください";
    }
    setErrors(newErrors);
    return Object.keys(newErrors).length === 0;
  };

  const handleSubmit = async () => {
    setIsSubmitting(true);
    try {
      const funeralLabel = FUNERAL_TYPES.find((t) => t.value === funeralType)?.label ?? funeralType;
      const guestLabel = GUEST_COUNTS.find((g) => g.value === guestCount)?.label ?? guestCount;
      const timingLabel = TIMINGS.find((t) => t.value === timing)?.label ?? timing;

      const fullMessage = [
        `【葬儀の種類】${funeralLabel}`,
        `【参列予定人数】${guestLabel}`,
        `【時期】${timingLabel}`,
        message ? `【ご要望】${message}` : "",
        initialVenueSlug ? `【希望施設】${initialVenueSlug}` : "",
      ].filter(Boolean).join("\n");

      const result = await submitInquiry({
        type: "estimate",
        name: name.trim(),
        email: email.trim(),
        phone: phone.trim(),
        prefectureSlug: prefecture,
        categorySlug: "sougi",
        providerIds: [],
        message: fullMessage,
      });

      if (result.success) {
        setIsCompleted(true);
      } else {
        setErrors({ submit: result.error ?? "送信中にエラーが発生しました" });
      }
    } catch {
      setErrors({ submit: "送信中にエラーが発生しました" });
    } finally {
      setIsSubmitting(false);
    }
  };

  // 完了画面
  if (isCompleted) {
    return (
      <div className="mx-auto max-w-2xl rounded-xl bg-green-50 px-6 py-12 text-center">
        <div className="mb-4 text-5xl">✓</div>
        <h2 className="text-2xl font-bold text-green-800">お見積もり依頼を受け付けました</h2>
        <p className="mt-4 text-green-700">
          ご入力いただいたメールアドレスに確認メールをお送りします。<br />
          担当者より24時間以内にご連絡いたします。
        </p>
      </div>
    );
  }

  // 選択肢カードの共通スタイル
  const optionCard = (selected: boolean) =>
    `cursor-pointer rounded-xl border-2 p-4 transition-all ${
      selected
        ? "border-primary-600 bg-primary-50 shadow-sm"
        : "border-gray-200 bg-white hover:border-primary-300 hover:bg-gray-50"
    }`;

  return (
    <div className="mx-auto max-w-2xl">
      <StepIndicator currentStep={step} totalSteps={totalSteps} labels={STEP_LABELS} />

      {/* Step 1: 葬儀の種類 */}
      {step === 1 && (
        <div>
          <h2 className="mb-6 text-xl font-bold text-gray-900">葬儀の種類を選択してください</h2>
          <div className="space-y-3">
            {FUNERAL_TYPES.map((type) => (
              <div
                key={type.value}
                className={optionCard(funeralType === type.value)}
                onClick={() => { setFuneralType(type.value); setTimeout(next, 200); }}
              >
                <p className="font-bold text-gray-900">{type.label}</p>
                <p className="mt-1 text-sm text-gray-500">{type.desc}</p>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Step 2: 参列予定人数 */}
      {step === 2 && (
        <div>
          <h2 className="mb-6 text-xl font-bold text-gray-900">参列予定人数を選択してください</h2>
          <div className="grid grid-cols-2 gap-3 sm:grid-cols-3">
            {GUEST_COUNTS.map((g) => (
              <div
                key={g.value}
                className={`${optionCard(guestCount === g.value)} text-center`}
                onClick={() => { setGuestCount(g.value); setTimeout(next, 200); }}
              >
                <p className="font-bold text-gray-900">{g.label}</p>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Step 3: エリア */}
      {step === 3 && (
        <div>
          <h2 className="mb-6 text-xl font-bold text-gray-900">ご希望のエリアを選択してください</h2>
          <div className="grid grid-cols-2 gap-3">
            {PREFECTURES.map((p) => (
              <div
                key={p.value}
                className={`${optionCard(prefecture === p.value)} text-center`}
                onClick={() => { setPrefecture(p.value); setTimeout(next, 200); }}
              >
                <p className="font-bold text-gray-900">{p.label}</p>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Step 4: 時期 */}
      {step === 4 && (
        <div>
          <h2 className="mb-6 text-xl font-bold text-gray-900">葬儀の時期を選択してください</h2>
          <div className="space-y-3">
            {TIMINGS.map((t) => (
              <div
                key={t.value}
                className={optionCard(timing === t.value)}
                onClick={() => { setTiming(t.value); setTimeout(next, 200); }}
              >
                <p className="font-bold text-gray-900">{t.label}</p>
                <p className="mt-1 text-sm text-gray-500">{t.desc}</p>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Step 5: 要望 */}
      {step === 5 && (
        <div>
          <h2 className="mb-6 text-xl font-bold text-gray-900">ご希望・ご要望があればお聞かせください</h2>
          <textarea
            value={message}
            onChange={(e) => setMessage(e.target.value)}
            placeholder="例：できるだけ費用を抑えたい、自宅近くが良い、家族のみで静かに見送りたい など"
            maxLength={5000}
            className="w-full rounded-xl border border-gray-300 p-4 text-gray-900 focus:border-primary-500 focus:outline-none focus:ring-1 focus:ring-primary-500"
            rows={5}
          />
          <p className="mt-2 text-sm text-gray-400">任意。スキップも可能です。</p>
        </div>
      )}

      {/* Step 6: お客様情報 */}
      {step === 6 && (
        <div>
          <h2 className="mb-6 text-xl font-bold text-gray-900">お客様情報を入力してください</h2>
          <div className="space-y-4">
            <div>
              <label className="mb-1 block text-sm font-bold text-gray-700">
                お名前 <span className="text-red-500">*</span>
              </label>
              <input
                type="text"
                value={name}
                onChange={(e) => setName(e.target.value)}
                placeholder="山田 太郎"
                className="w-full rounded-lg border border-gray-300 px-4 py-3 text-gray-900 focus:border-primary-500 focus:outline-none focus:ring-1 focus:ring-primary-500"
              />
              {errors.name && <p className="mt-1 text-sm text-red-500">{errors.name}</p>}
            </div>
            <div>
              <label className="mb-1 block text-sm font-bold text-gray-700">
                メールアドレス <span className="text-red-500">*</span>
              </label>
              <input
                type="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                placeholder="example@email.com"
                className="w-full rounded-lg border border-gray-300 px-4 py-3 text-gray-900 focus:border-primary-500 focus:outline-none focus:ring-1 focus:ring-primary-500"
              />
              {errors.email && <p className="mt-1 text-sm text-red-500">{errors.email}</p>}
            </div>
            <div>
              <label className="mb-1 block text-sm font-bold text-gray-700">
                電話番号
              </label>
              <input
                type="tel"
                value={phone}
                onChange={(e) => setPhone(e.target.value)}
                placeholder="090-1234-5678"
                className="w-full rounded-lg border border-gray-300 px-4 py-3 text-gray-900 focus:border-primary-500 focus:outline-none focus:ring-1 focus:ring-primary-500"
              />
            </div>
          </div>
        </div>
      )}

      {/* Step 7: 確認画面 */}
      {step === 7 && (
        <div>
          <h2 className="mb-6 text-xl font-bold text-gray-900">入力内容の確認</h2>
          <dl className="divide-y divide-gray-100 rounded-xl border border-gray-200 bg-white">
            <div className="flex gap-4 px-4 py-3">
              <dt className="w-32 shrink-0 font-bold text-gray-700">葬儀の種類</dt>
              <dd className="text-gray-600">
                {FUNERAL_TYPES.find((t) => t.value === funeralType)?.label ?? "未選択"}
              </dd>
            </div>
            <div className="flex gap-4 px-4 py-3">
              <dt className="w-32 shrink-0 font-bold text-gray-700">参列人数</dt>
              <dd className="text-gray-600">
                {GUEST_COUNTS.find((g) => g.value === guestCount)?.label ?? "未選択"}
              </dd>
            </div>
            <div className="flex gap-4 px-4 py-3">
              <dt className="w-32 shrink-0 font-bold text-gray-700">エリア</dt>
              <dd className="text-gray-600">
                {PREFECTURES.find((p) => p.value === prefecture)?.label ?? "未選択"}
              </dd>
            </div>
            <div className="flex gap-4 px-4 py-3">
              <dt className="w-32 shrink-0 font-bold text-gray-700">時期</dt>
              <dd className="text-gray-600">
                {TIMINGS.find((t) => t.value === timing)?.label ?? "未選択"}
              </dd>
            </div>
            {message && (
              <div className="flex gap-4 px-4 py-3">
                <dt className="w-32 shrink-0 font-bold text-gray-700">ご要望</dt>
                <dd className="whitespace-pre-line text-gray-600">{message}</dd>
              </div>
            )}
            <div className="flex gap-4 px-4 py-3">
              <dt className="w-32 shrink-0 font-bold text-gray-700">お名前</dt>
              <dd className="text-gray-600">{name}</dd>
            </div>
            <div className="flex gap-4 px-4 py-3">
              <dt className="w-32 shrink-0 font-bold text-gray-700">メール</dt>
              <dd className="text-gray-600">{email}</dd>
            </div>
            {phone && (
              <div className="flex gap-4 px-4 py-3">
                <dt className="w-32 shrink-0 font-bold text-gray-700">電話番号</dt>
                <dd className="text-gray-600">{phone}</dd>
              </div>
            )}
          </dl>
          {errors.submit && (
            <p className="mt-4 text-center text-sm text-red-500">{errors.submit}</p>
          )}
        </div>
      )}

      {/* ナビゲーションボタン */}
      <div className="mt-8 flex justify-between">
        {step > 1 ? (
          <button
            type="button"
            onClick={prev}
            className="rounded-lg border border-gray-300 px-6 py-3 text-sm font-medium text-gray-700 transition-colors hover:bg-gray-50"
          >
            戻る
          </button>
        ) : (
          <div />
        )}

        {step < totalSteps ? (
          step === 5 ? (
            // Step5（要望）はスキップ可能
            <button
              type="button"
              onClick={next}
              className="rounded-lg bg-primary-600 px-6 py-3 text-sm font-medium text-white transition-colors hover:bg-primary-700"
            >
              {message ? "次へ" : "スキップ"}
            </button>
          ) : step === 6 ? (
            // Step6はバリデーション後に次へ
            <button
              type="button"
              onClick={() => { if (validateStep6()) next(); }}
              className="rounded-lg bg-primary-600 px-6 py-3 text-sm font-medium text-white transition-colors hover:bg-primary-700"
            >
              確認画面へ
            </button>
          ) : null
        ) : (
          // Step7: 送信ボタン
          <button
            type="button"
            onClick={handleSubmit}
            disabled={isSubmitting}
            className="rounded-lg bg-accent-warning px-8 py-3 text-base font-bold text-white transition-colors hover:opacity-90 disabled:opacity-50"
          >
            {isSubmitting ? "送信中..." : "無料見積もりを送信"}
          </button>
        )}
      </div>
    </div>
  );
}
