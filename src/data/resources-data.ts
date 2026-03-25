export interface ResourceSite {
  nameKey: string;
  url: string;
  domain: string;
  descKey?: string;
  featured?: boolean;
}

export interface HeroCategory {
  id: string;
  labelKey: string;
  color: string;
  sites: ResourceSite[];
}

export const heroCategories: HeroCategory[] = [
  {
    id: 'government',
    labelKey: 'resources.category.government.label',
    color: '#065f46',
    sites: [
      {
        nameKey: 'resources.site.govhk',
        url: 'https://www.gov.hk/',
        domain: 'gov.hk',
        featured: true,
        descKey: 'resources.featured.govhk',
      },
      {
        nameKey: 'resources.site.legco',
        url: 'https://www.legco.gov.hk/',
        domain: 'legco.gov.hk',
        featured: true,
        descKey: 'resources.featured.legco',
      },
      {
        nameKey: 'resources.site.censtatd',
        url: 'https://www.censtatd.gov.hk/',
        domain: 'censtatd.gov.hk',
      },
      {
        nameKey: 'resources.site.lcsd',
        url: 'https://www.lcsd.gov.hk/',
        domain: 'lcsd.gov.hk',
      },
      {
        nameKey: 'resources.site.brandhk',
        url: 'https://www.brandhk.gov.hk/',
        domain: 'brandhk.gov.hk',
      },
    ],
  },
  {
    id: 'culture',
    labelKey: 'resources.category.culture.label',
    color: '#7c3aed',
    sites: [
      {
        nameKey: 'resources.site.hkmuseum',
        url: 'https://hk.history.museum/',
        domain: 'hk.history.museum',
        featured: true,
        descKey: 'resources.featured.hkmuseum',
      },
      {
        nameKey: 'resources.site.mplus',
        url: 'https://www.mplus.org.hk/',
        domain: 'mplus.org.hk',
        featured: true,
        descKey: 'resources.featured.mplus',
      },
      {
        nameKey: 'resources.site.hkpa',
        url: 'https://www.hkapa.edu/',
        domain: 'hkapa.edu',
      },
      {
        nameKey: 'resources.site.hkfilm',
        url: 'https://www.hkfa.gov.hk/',
        domain: 'hkfa.gov.hk',
      },
    ],
  },
  {
    id: 'media',
    labelKey: 'resources.category.media.label',
    color: '#dc2626',
    sites: [
      {
        nameKey: 'resources.site.scmp',
        url: 'https://www.scmp.com/',
        domain: 'scmp.com',
        featured: true,
        descKey: 'resources.featured.scmp',
      },
      {
        nameKey: 'resources.site.hkfp',
        url: 'https://hongkongfp.com/',
        domain: 'hongkongfp.com',
      },
      {
        nameKey: 'resources.site.rthk',
        url: 'https://www.rthk.hk/',
        domain: 'rthk.hk',
      },
    ],
  },
  {
    id: 'economy',
    labelKey: 'resources.category.economy.label',
    color: '#ea580c',
    sites: [
      {
        nameKey: 'resources.site.hkex',
        url: 'https://www.hkex.com.hk/',
        domain: 'hkex.com.hk',
        featured: true,
        descKey: 'resources.featured.hkex',
      },
      {
        nameKey: 'resources.site.hktdc',
        url: 'https://www.hktdc.com/',
        domain: 'hktdc.com',
      },
      {
        nameKey: 'resources.site.investhk',
        url: 'https://www.investhk.gov.hk/',
        domain: 'investhk.gov.hk',
      },
      {
        nameKey: 'resources.site.hkma',
        url: 'https://www.hkma.gov.hk/',
        domain: 'hkma.gov.hk',
      },
    ],
  },
  {
    id: 'education',
    labelKey: 'resources.category.education.label',
    color: '#0284c7',
    sites: [
      {
        nameKey: 'resources.site.hku',
        url: 'https://www.hku.hk/',
        domain: 'hku.hk',
        featured: true,
        descKey: 'resources.featured.hku',
      },
      {
        nameKey: 'resources.site.cuhk',
        url: 'https://www.cuhk.edu.hk/',
        domain: 'cuhk.edu.hk',
      },
      {
        nameKey: 'resources.site.hkust',
        url: 'https://hkust.edu.hk/',
        domain: 'hkust.edu.hk',
      },
      {
        nameKey: 'resources.site.polyu',
        url: 'https://www.polyu.edu.hk/',
        domain: 'polyu.edu.hk',
      },
    ],
  },
  {
    id: 'transport',
    labelKey: 'resources.category.transport.label',
    color: '#059669',
    sites: [
      {
        nameKey: 'resources.site.mtr',
        url: 'https://www.mtr.com.hk/',
        domain: 'mtr.com.hk',
        featured: true,
        descKey: 'resources.featured.mtr',
      },
      {
        nameKey: 'resources.site.starferry',
        url: 'https://www.starferry.com.hk/',
        domain: 'starferry.com.hk',
      },
      {
        nameKey: 'resources.site.octopus',
        url: 'https://www.octopus.com.hk/',
        domain: 'octopus.com.hk',
      },
    ],
  },
  {
    id: 'community',
    labelKey: 'resources.category.community.label',
    color: '#4f46e5',
    sites: [
      {
        nameKey: 'resources.site.lihkg',
        url: 'https://lihkg.com/',
        domain: 'lihkg.com',
      },
      {
        nameKey: 'resources.site.inmediahk',
        url: 'https://www.inmediahk.net/',
        domain: 'inmediahk.net',
      },
    ],
  },
];

// Chapter sections for the resources page
export interface ChapterSection {
  id: string;
  titleKey: string;
  descKey: string;
  sites: ResourceSite[];
}

export const chapterSections: Record<string, ChapterSection[]> = {
  government: [
    {
      id: 'central',
      titleKey: 'resources.chapter.government.central',
      descKey: 'resources.chapter.government.central.desc',
      sites: [
        {
          nameKey: 'resources.site.govhk',
          url: 'https://www.gov.hk/',
          domain: 'gov.hk',
        },
        {
          nameKey: 'resources.site.legco',
          url: 'https://www.legco.gov.hk/',
          domain: 'legco.gov.hk',
        },
        {
          nameKey: 'resources.site.censtatd',
          url: 'https://www.censtatd.gov.hk/',
          domain: 'censtatd.gov.hk',
        },
      ],
    },
  ],
};

// Named exports for template compatibility
const govSites = heroCategories.find((c) => c.id === 'government')?.sites ?? [];
const cultureSites =
  heroCategories.find((c) => c.id === 'culture')?.sites ?? [];
const mediaSites = heroCategories.find((c) => c.id === 'media')?.sites ?? [];
const econSites = heroCategories.find((c) => c.id === 'economy')?.sites ?? [];
const eduSites = heroCategories.find((c) => c.id === 'education')?.sites ?? [];
const transportSites =
  heroCategories.find((c) => c.id === 'transport')?.sites ?? [];
const communitySites =
  heroCategories.find((c) => c.id === 'community')?.sites ?? [];

// Government
export const governmentFiveYuan: ResourceSite[] = govSites.slice(0, 2);
export const governmentMinistries: ResourceSite[] = govSites.slice(2, 4);
export const governmentLocalGov: ResourceSite[] = govSites.slice(4);
export const governmentOpenData: ResourceSite[] = [
  {
    nameKey: 'resources.site.datagovhk',
    url: 'https://data.gov.hk/',
    domain: 'data.gov.hk',
    featured: true,
    descKey: 'resources.featured.datagovhk',
  },
];

// Culture
export const cultureUniversities: ResourceSite[] = eduSites;
export const cultureMuseums: ResourceSite[] = cultureSites.filter(
  (s) => s.url.includes('museum') || s.url.includes('mplus'),
);
export const cultureVenues: ResourceSite[] = cultureSites.filter(
  (s) => s.url.includes('hkapa') || s.url.includes('hkfa'),
);
export const cultureParks: ResourceSite[] = [
  {
    nameKey: 'resources.site.afcd',
    url: 'https://www.afcd.gov.hk/',
    domain: 'afcd.gov.hk',
  },
];

// Media
export const mediaMainstream: ResourceSite[] = mediaSites.filter(
  (s) => s.url.includes('scmp') || s.url.includes('rthk'),
);
export const mediaDigital: ResourceSite[] = mediaSites.filter((s) =>
  s.url.includes('hkfp'),
);
export const mediaNgo: ResourceSite[] = communitySites.filter((s) =>
  s.url.includes('inmediahk'),
);

// Economy
export const econCompanies: ResourceSite[] = econSites.filter(
  (s) => s.url.includes('hkex') || s.url.includes('hktdc'),
);
export const econTransport: ResourceSite[] = transportSites;
export const econHealth: ResourceSite[] = [
  {
    nameKey: 'resources.site.ha',
    url: 'https://www.ha.org.hk/',
    domain: 'ha.org.hk',
    featured: true,
    descKey: 'resources.featured.ha',
  },
];
export const econFinance: ResourceSite[] = econSites.filter(
  (s) => s.url.includes('hkma') || s.url.includes('investhk'),
);

// Community
export const communityProjects: ResourceSite[] = communitySites;
export const communityFood: ResourceSite[] = [
  {
    nameKey: 'resources.site.openrice',
    url: 'https://www.openrice.com/',
    domain: 'openrice.com',
  },
];

// HongKong.md project links
export const hongkongmdLinks: ResourceSite[] = [
  {
    nameKey: 'resources.site.hongkongmd',
    url: 'https://hongkong.md/',
    domain: 'hongkong.md',
    featured: true,
    descKey: 'resources.featured.hongkongmd',
  },
  {
    nameKey: 'resources.site.github',
    url: 'https://github.com/OurLandHK/hong-kong-md',
    domain: 'github.com',
  },
];
