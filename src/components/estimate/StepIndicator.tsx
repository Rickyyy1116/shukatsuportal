/** ステップ式フォームのプログレスバー */

interface StepIndicatorProps {
  currentStep: number;
  totalSteps: number;
  labels: string[];
}

export default function StepIndicator({ currentStep, totalSteps, labels }: StepIndicatorProps) {
  return (
    <div className="mb-8">
      {/* プログレスバー */}
      <div className="mb-3 h-2 w-full rounded-full bg-gray-200">
        <div
          className="h-2 rounded-full bg-primary-600 transition-all duration-300"
          style={{ width: `${(currentStep / totalSteps) * 100}%` }}
        />
      </div>
      {/* ステップラベル */}
      <p className="text-center text-sm text-gray-600">
        ステップ {currentStep} / {totalSteps}：{labels[currentStep - 1] ?? ""}
      </p>
    </div>
  );
}
