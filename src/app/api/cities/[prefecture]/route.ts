import { getCitiesByPrefecture } from "@/lib/data";

/** 市区町村取得API（Client Componentから呼び出し用） */
export async function GET(
  _req: Request,
  { params }: { params: Promise<{ prefecture: string }> }
) {
  const { prefecture } = await params;
  const cities = await getCitiesByPrefecture(prefecture);
  return Response.json(cities);
}
