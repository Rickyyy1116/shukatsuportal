import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: {
    default: "安心終活ナビ | 葬儀場・お墓の無料見積もり",
    template: "%s | 安心終活ナビ",
  },
  description:
    "全国の葬儀場・霊園を料金・特徴で比較。無料見積もりであなたに最適な葬儀場・お墓を見つけましょう。",
  openGraph: {
    title: "安心終活ナビ | 葬儀場・お墓の無料見積もり",
    description:
      "全国の葬儀場・霊園を料金・特徴で比較。無料見積もりで最適な事業者が見つかります。",
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
