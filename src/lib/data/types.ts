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
