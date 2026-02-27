import type { Metadata } from "next";
import Header from "@/components/layout/Header";
import Footer from "@/components/layout/Footer";
import Breadcrumb from "@/components/layout/Breadcrumb";
import { SITE_NAME } from "@/lib/constants";

/** メタデータ（noindex） */
export const metadata: Metadata = {
  title: `加盟店規約 | ${SITE_NAME}`,
  description:
    "安心終活ナビの加盟店（事業者）向け利用規約です。掲載条件、料金体系、禁止事項等をご確認ください。",
  robots: { index: false, follow: false },
};

/** 加盟店規約ページ */
export default function PartnerTermsPage() {
  const breadcrumbItems = [
    { label: "トップ", href: "/" },
    { label: "加盟店規約" },
  ];

  return (
    <>
      <Header />
      <main className="mx-auto max-w-4xl px-4 py-6 sm:px-6 lg:px-8">
        <Breadcrumb items={breadcrumbItems} />

        <h1 className="mt-4 text-2xl font-bold text-gray-900 sm:text-3xl">
          加盟店規約
        </h1>
        <p className="mt-2 text-sm text-gray-500">最終更新日: 2026年2月22日</p>

        <div className="mt-8 space-y-10 text-gray-700 leading-relaxed">
          {/* 前文 */}
          <section>
            <p>
              本規約（以下「本規約」）は、株式会社Nexa（以下「当社」）が運営する安心終活ナビ（以下「本サービス」）に事業者として掲載（以下「加盟」）する際の条件を定めるものです。加盟申込みをもって本規約に同意したものとみなします。
            </p>
          </section>

          {/* 第1条 */}
          <section>
            <h2 className="mb-3 text-lg font-bold text-gray-900">
              第1条（サービス内容と料金体系）
            </h2>
            <ol className="list-decimal space-y-2 pl-6">
              <li>
                本サービスは、終活関連サービスを提供する事業者と利用者をマッチングするプラットフォームです。
              </li>
              <li>
                掲載料は無料とし、リード（問い合わせ・資料請求等）の発生時に反響課金、成約時に成約課金が発生します。
              </li>
              <li>
                反響課金の単価および成約課金の料率は、カテゴリごとに当社が別途定め、加盟申込み時に書面またはメールにて通知します。
              </li>
              <li>
                支払い条件は月末締め翌月末払いとし、当社が発行する請求書に基づき支払うものとします。
              </li>
            </ol>
          </section>

          {/* 第2条 */}
          <section>
            <h2 className="mb-3 text-lg font-bold text-gray-900">
              第2条（事業者の義務）
            </h2>
            <ol className="list-decimal space-y-2 pl-6">
              <li>
                加盟事業者は、本サービスを通じて受領したリードに対し、24時間以内に初回連絡を行うものとします。
              </li>
              <li>
                成約が発生した場合、成約日から7日以内に当社所定の方法で成約報告を行うものとします。
              </li>
              <li>
                成約報告において虚偽の報告を行うことを禁止します。
              </li>
              <li>
                掲載情報（料金・サービス内容・営業時間等）に変更があった場合、速やかに当社に通知するものとします。
              </li>
            </ol>
          </section>

          {/* 第3条 */}
          <section>
            <h2 className="mb-3 text-lg font-bold text-gray-900">
              第3条（禁止事項）
            </h2>
            <p className="mb-2">
              加盟事業者は、以下の行為を行ってはならないものとします。
            </p>
            <ol className="list-decimal space-y-2 pl-6">
              <li>
                本サービスを通じて紹介されたユーザーとの直接取引への誘導（中抜き行為）
              </li>
              <li>
                本サービスを通じて取得したユーザー情報の目的外利用
              </li>
              <li>
                当社の事前承諾なく、本サービスの掲載情報を競合プラットフォームに転載すること
              </li>
              <li>
                本サービスの運営を妨害する行為、またはそのおそれのある行為
              </li>
              <li>
                法令または公序良俗に反する行為
              </li>
            </ol>
          </section>

          {/* 第4条 */}
          <section>
            <h2 className="mb-3 text-lg font-bold text-gray-900">
              第4条（ペナルティ）
            </h2>
            <ol className="list-decimal space-y-2 pl-6">
              <li>
                成約報告に虚偽があった場合、当社は当該事業者の掲載を一時停止または永久停止できるものとします。
              </li>
              <li>
                中抜き行為が発覚した場合、当社は当該リードに対する成約課金相当額をペナルティとして請求できるものとします。
              </li>
              <li>
                その他本規約に違反した場合、当社は是正を求め、改善が見られない場合は掲載停止の措置を講じることができます。
              </li>
            </ol>
          </section>

          {/* 第5条 */}
          <section>
            <h2 className="mb-3 text-lg font-bold text-gray-900">
              第5条（契約解除）
            </h2>
            <ol className="list-decimal space-y-2 pl-6">
              <li>
                加盟事業者は、30日前までに書面またはメールにて通知することにより、加盟契約を解除できるものとします。
              </li>
              <li>
                当社は、加盟事業者に重大な規約違反があった場合、催告なく即時に加盟契約を解除できるものとします。
              </li>
              <li>
                契約解除後も、解除日以前に発生した料金の支払い義務は存続するものとします。
              </li>
            </ol>
          </section>

          {/* 第6条 */}
          <section>
            <h2 className="mb-3 text-lg font-bold text-gray-900">
              第6条（秘密保持）
            </h2>
            <ol className="list-decimal space-y-2 pl-6">
              <li>
                加盟事業者は、本サービスを通じて取得したユーザーの個人情報を、個人情報保護法その他関連法令に従い厳重に管理するものとします。
              </li>
              <li>
                当社の料金体系、事業戦略その他の機密情報を第三者に開示・漏洩してはならないものとします。
              </li>
            </ol>
          </section>

          {/* 第7条 */}
          <section>
            <h2 className="mb-3 text-lg font-bold text-gray-900">
              第7条（規約の変更）
            </h2>
            <ol className="list-decimal space-y-2 pl-6">
              <li>
                当社は、必要に応じて本規約を変更できるものとします。変更後の規約は、本サービス上に掲載した時点で効力を生じるものとします。
              </li>
              <li>
                重大な変更については、事前に加盟事業者に対しメール等で通知するものとします。
              </li>
            </ol>
          </section>

          {/* 附則 */}
          <section className="border-t border-gray-200 pt-6">
            <p className="text-sm text-gray-500">
              附則: 本規約は2026年2月22日より施行します。
            </p>
          </section>
        </div>
      </main>
      <Footer />
    </>
  );
}
