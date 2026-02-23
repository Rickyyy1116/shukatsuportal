import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: {
    default: "安心終活ナビ | 葬儀・お墓・介護・相続の無料相談・見積もり",
    template: "%s | 安心終活ナビ",
  },
  description:
    "全国の葬儀社・霊園・介護施設・相続専門家を無料で比較・相談。口コミ・料金で比べて、あなたに最適な終活サービスを見つけましょう。",
  openGraph: {
    title: "安心終活ナビ | 終活サービスの無料マッチング",
    description:
      "全国の葬儀社・霊園・介護施設・相続専門家を無料で比較・相談。",
    url: "https://portal.shukatsu-ansin.com",
    siteName: "安心終活ナビ",
    locale: "ja_JP",
    type: "website",
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="ja">
      <body className="antialiased">
        {children}
      </body>
    </html>
  );
}
