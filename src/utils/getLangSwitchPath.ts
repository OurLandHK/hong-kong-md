import { readFile } from 'fs/promises';
import { resolve } from 'path';

const base = import.meta.env.BASE_URL.replace(/\/$/, '');

export async function getLangSwitchPath(currentPath: string) {
  // Strip base prefix for internal logic
  const path = currentPath.startsWith(base)
    ? currentPath.slice(base.length) || '/'
    : currentPath;

  // Language switch logic — use _translations.json for article pages
  let zhLink = '/';
  let enLink = '/en';

  // Build translation lookup from _translations.json
  const translationMap = new Map<string, string>(); // enUrl → zhUrl
  const reverseMap = new Map<string, string>(); // zhUrl → enUrl
  try {
    const translationsPath = resolve(
      process.cwd(),
      'knowledge',
      '_translations.json',
    );
    const raw = await readFile(translationsPath, 'utf-8');
    const translations: Record<string, string> = JSON.parse(raw);
    const categoryFolderToSlug: Record<string, string> = {
      History: 'history',
      Geography: 'geography',
      Culture: 'culture',
      Food: 'food',
      Art: 'art',
      Music: 'music',
      Technology: 'technology',
      Nature: 'nature',
      People: 'people',
      Society: 'society',
      Economy: 'economy',
      Lifestyle: 'lifestyle',
      About: 'about',
    };
    for (const [enFile, zhFile] of Object.entries(translations)) {
      const enParts = enFile.replace(/\.md$/, '').split('/');
      const zhParts = zhFile.replace(/\.md$/, '').split('/');
      if (enParts.length >= 3 && zhParts.length >= 2) {
        const enCatSlug =
          categoryFolderToSlug[enParts[1]] || enParts[1].toLowerCase();
        const zhCatSlug =
          categoryFolderToSlug[zhParts[0]] || zhParts[0].toLowerCase();
        const enUrl = `/en/${enCatSlug}/${enParts[2]}`;
        const zhUrl = `/${zhCatSlug}/${encodeURIComponent(zhParts[1])}`;
        translationMap.set(enUrl, zhUrl);
        reverseMap.set(zhUrl, enUrl);
      }
    }
  } catch {}

  if (path.startsWith('/en')) {
    enLink = path;
    const decoded = decodeURIComponent(path);
    zhLink =
      translationMap.get(decoded) ||
      translationMap.get(path) ||
      (() => {
        const match = path.match(/^\/en\/([^/]+)\/[^/]+$/);
        return match ? `/${match[1]}` : path.replace(/^\/en/, '') || '/';
      })();
  } else {
    zhLink = path;
    const decoded = decodeURIComponent(path);
    enLink =
      reverseMap.get(decoded) ||
      reverseMap.get(path) ||
      (() => {
        const match = path.match(/^\/([^/]+)\/[^/]+$/);
        return match ? `/en/${match[1]}` : '/en' + (path === '/' ? '' : path);
      })();
  }

  return {
    enLink: `${base}${enLink}`,
    zhLink: `${base}${zhLink}`,
  };
}
