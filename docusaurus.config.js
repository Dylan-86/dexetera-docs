// @ts-check
import {themes as prismThemes} from 'prism-react-renderer';

const config = {
  title: 'Dexetera Docs',
  tagline: 'Trade what you want',
  favicon: 'img/favicon.svg',

  url: 'https://doc.dexetera.win',
  baseUrl: '/',

  onBrokenLinks: 'throw',

  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.js',
          editUrl: 'https://doc.dexetera.win/docs/',
        },
        blog: {
          showReadingTime: true,
        },
        theme: {
          customCss: './src/css/custom.css',
        },
      },
    ],
  ],

  themeConfig:
    {
      colorMode: {
        respectPrefersColorScheme: true,
      },
      navbar: {
        title: 'Dexetera Docs',
        items: [
          {
            type: 'docSidebar',
            sidebarId: 'tutorialSidebar',
            position: 'left',
            label: 'Dexetera Docs',
          },
          {to: '/', label: 'What is Dexetera?', position: 'right'},
        ],
      },
      footer: {
        style: 'dark',
        copyright: `Copyright © ${new Date().getFullYear()} Dexetera.`,
      },
      prism: {
        theme: prismThemes.github,
        darkTheme: prismThemes.dracula,
      },
    },

};

export default config;
