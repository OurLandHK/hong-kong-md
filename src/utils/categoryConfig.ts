import { useTranslations } from '../i18n/utils';

export const getCategoryConfigs = (t: ReturnType<typeof useTranslations>) => ({
  history: {
    name: t('categoryConfig.history'),
    description: t('categoryConfig.history.description'),

    icon: '📜',
    color: '#92400e',
    colorLight: '#f59e0b20',
    gradient: 'linear-gradient(135deg, #92400e, #d97706)',
    cover:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Hong_Kong_Island_Skyline_2009.jpg/640px-Hong_Kong_Island_Skyline_2009.jpg',
  },
  geography: {
    name: t('categoryConfig.geography'),
    description: t('categoryConfig.geography.description'),
    icon: '🗺️',
    color: '#065f46',
    colorLight: '#059f4620',
    gradient: 'linear-gradient(135deg, #065f46, #10b981)',
    cover:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Victoria_Harbour_Panorama_201801.jpg/640px-Victoria_Harbour_Panorama_201801.jpg',
  },
  culture: {
    name: t('categoryConfig.culture'),
    description: t('categoryConfig.culture.description'),

    icon: '🎭',
    color: '#7c3aed',
    colorLight: '#7c3aed20',
    gradient: 'linear-gradient(135deg, #7c3aed, #a855f7)',
    cover:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/HK_WongTaiSinTemple_2009.jpg/640px-HK_WongTaiSinTemple_2009.jpg',
  },
  food: {
    name: t('categoryConfig.food'),
    description: t('categoryConfig.food.description'),
    icon: '🍜',
    color: '#ea580c',
    colorLight: '#ea580c20',
    gradient: 'linear-gradient(135deg, #ea580c, #f97316)',
    cover:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Dim_sum_-_Brunch.jpg/640px-Dim_sum_-_Brunch.jpg',
  },
  art: {
    name: t('categoryConfig.art'),
    description: t('categoryConfig.art.description'),
    icon: '🎨',
    color: '#be185d',
    colorLight: '#be185d20',
    gradient: 'linear-gradient(135deg, #be185d, #ec4899)',
    cover:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/M%2B_Museum_Hong_Kong_2021.jpg/640px-M%2B_Museum_Hong_Kong_2021.jpg',
  },
  music: {
    name: t('categoryConfig.music'),
    description: t('categoryConfig.music.description'),
    icon: '🎵',
    color: '#0891b2',
    colorLight: '#0891b220',
    gradient: 'linear-gradient(135deg, #0891b2, #06b6d4)',
    cover:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Hong_Kong_Coliseum_Overview_201105.jpg/640px-Hong_Kong_Coliseum_Overview_201105.jpg',
  },
  technology: {
    name: t('categoryConfig.technology'),
    description: t('categoryConfig.technology.description'),
    icon: '💻',
    color: '#1d4ed8',
    colorLight: '#1d4ed820',
    gradient: 'linear-gradient(135deg, #1d4ed8, #3b82f6)',
    cover:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Cyberport_Overview_201406.jpg/640px-Cyberport_Overview_201406.jpg',
  },
  nature: {
    name: t('categoryConfig.nature'),
    description: t('categoryConfig.nature.description'),
    icon: '🌿',
    color: '#15803d',
    colorLight: '#15803d20',
    gradient: 'linear-gradient(135deg, #15803d, #22c55e)',
    cover:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Hong_Kong_UNESCO_Global_Geopark.jpg/640px-Hong_Kong_UNESCO_Global_Geopark.jpg',
  },
  people: {
    name: t('categoryConfig.people'),
    description: t('categoryConfig.people.description'),
    description_en: "Key figures and stories that shaped Hong Kong's development",
    icon: '👥',
    color: '#b45309',
    colorLight: '#b4530920',
    gradient: 'linear-gradient(135deg, #b45309, #f59e0b)',
    cover:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Bruce_Lee_Statue.jpg/400px-Bruce_Lee_Statue.jpg',
  },
  society: {
    name: t('categoryConfig.society'),
    description: t('categoryConfig.society.description'),
    icon: '🏛️',
    color: '#475569',
    colorLight: '#47556920',
    gradient: 'linear-gradient(135deg, #475569, #64748b)',
    cover:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Legislative_Council_Complex_2011.jpg/640px-Legislative_Council_Complex_2011.jpg',
  },
  economy: {
    name: t('categoryConfig.economy'),
    description: t('categoryConfig.economy.description'),
    icon: '📊',
    color: '#c2410c',
    colorLight: '#c2410c20',
    gradient: 'linear-gradient(135deg, #c2410c, #ea580c)',
    cover:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/International_Finance_Centre_%28Hong_Kong%29.jpg/400px-International_Finance_Centre_%28Hong_Kong%29.jpg',
  },
  lifestyle: {
    name: t('categoryConfig.lifestyle'),
    description: t('categoryConfig.lifestyle.description'),
    icon: '🏠',
    color: '#4d7c0f',
    colorLight: '#4d7c0f20',
    gradient: 'linear-gradient(135deg, #4d7c0f, #65a30d)',
    cover:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/HK_Tramways_120_at_Western_Market.jpg/640px-HK_Tramways_120_at_Western_Market.jpg',
  },
});

const __plainCategoryConfig = getCategoryConfigs((key) => key as any);

export const categoryList = Object.keys(__plainCategoryConfig) as CategoryKey[];
export type CategoryKey = keyof typeof __plainCategoryConfig;
