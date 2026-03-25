import { ui, defaultLang, showDefaultLang } from './ui';
import type { Lang } from '../types';

const base = import.meta.env.BASE_URL.replace(/\/$/, '');

export function getLangFromUrl(url: URL): Lang {
  const pathname = url.pathname.startsWith(base)
    ? url.pathname.slice(base.length)
    : url.pathname;
  const [, lang] = pathname.split('/');
  if (lang in ui) return lang as Lang;
  return defaultLang;
}

export function useTranslations(lang: Lang) {
  return function t(key: keyof (typeof ui)[typeof defaultLang]) {
    return ui[lang][key] || ui[defaultLang][key];
  };
}

export function useTranslatedPath(lang: Lang) {
  return function translatePath(path: string, l: string = lang) {
    const langPath =
      !showDefaultLang && l === defaultLang ? path : `/${l}${path}`;
    return `${base}${langPath}`;
  };
}
