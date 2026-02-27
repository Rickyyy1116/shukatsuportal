// === 事業者 ===
export type PriceRange = "low" | "mid" | "high";

export interface Provider {
  id: string;
  name: string;
  slug: string;
  categorySlug: string;
  description: string;
  address: string;
  phone: string;
  website: string;
  priceRange: PriceRange;
  priceDetail: string;
  businessHours: string;
  features: string[];
  images: string[];
  latitude: number;
  longitude: number;
  prefectureSlug: string;
  citySlug: string;
  ratingAvg: number;
  reviewCount: number;
}

// === カテゴリ ===
export interface Category {
  id: string;
  name: string;
  slug: string;
  sortOrder: number;
  icon: string;
  description: string;
  providerLabel: string;
}

// === エリア ===
export interface Area {
  id: string;
  name: string;
  slug: string;
  code: string;
  parentSlug: string | null;
  level: 1 | 2;
  region: string;
}

// === 口コミ ===
export interface Review {
  id: string;
  providerId: string;
  rating: number;
  content: string;
  serviceType: string;
  usedAt: string;
  authorName: string;
  createdAt: string;
}

// === 問い合わせ ===
export type InquiryType = "consultation" | "estimate" | "document";

export interface InquiryInput {
  type: InquiryType;
  name: string;
  email: string;
  phone: string;
  prefectureSlug: string;
  categorySlug: string;
  providerIds: string[];
  message: string;
}

// === 斎場・葬儀場 ===
export type VenueType =
  | "public_crematorium"   // 公営火葬場
  | "private_crematorium"  // 民営火葬場
  | "private_hall"         // 民営斎場
  | "temple_hall"          // 寺院式場
  | "public_facility";     // 公共施設

export interface PricePlan {
  type: string;      // "kasoshiki" | "ichinichisou" | "kazokusou" | "ippansou"
  label: string;     // "火葬式" | "一日葬" | "家族葬" | "一般葬"
  priceFrom: number; // 最低価格（税抜）
}

export interface Venue {
  id: string;
  name: string;
  slug: string;
  venueType: VenueType;
  description: string;
  address: string;
  prefectureSlug: string;
  citySlug: string;
  latitude: number;
  longitude: number;
  nearestStation: string;
  stationWalkMinutes: number | null;
  capacityMax: number | null;
  hallCount: number | null;
  hasCrematorium: boolean;
  parkingCount: number | null;
  facilities: Record<string, boolean>;
  pricePlans: PricePlan[];
  features: string[];
  images: string[];
  operatorName: string;
  ratingAvg: number;
  reviewCount: number;
}

export interface VenueFilter {
  prefectureSlug?: string;
  citySlug?: string;
  venueType?: VenueType;
  hasCrematorium?: boolean;
  features?: string[];
  sortBy?: "rating" | "reviewCount" | "name";
  page?: number;
  perPage?: number;
}

// === 見積もりフォーム ===
export interface EstimateInput {
  funeralType: string;
  guestCount: string;
  prefecture: string;
  city: string;
  timing: string;
  message: string;
  name: string;
  email: string;
  phone: string;
  venueId?: string;
}

// === 検索・フィルター ===
export interface ProviderFilter {
  categorySlug?: string;
  prefectureSlug?: string;
  citySlug?: string;
  priceRange?: PriceRange;
  features?: string[];
  sortBy?: "rating" | "reviewCount" | "name";
  page?: number;
  perPage?: number;
}

export interface PaginatedResult<T> {
  data: T[];
  total: number;
  page: number;
  perPage: number;
  totalPages: number;
}
