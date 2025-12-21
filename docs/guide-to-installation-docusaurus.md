# Dexetera Documentation Complete Setup Guide

## Prerequisites
- Ubuntu server with root access
- Domain `doc.dexetera.win` pointing to server IP
- Node.js 20+ installed

## 1. Initial Server Setup

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install nginx, nodejs, npm, certbot
sudo apt install nginx nodejs npm certbot python3-certbot-nginx -y

# Enable nginx
sudo systemctl enable nginx
sudo systemctl start nginx
```

## 2. Docusaurus Project Setup

```bash
# Create project directory
cd ~
mkdir -p docs-dexetera/dexetera
cd docs-dexetera/dexetera

# Initialize Docusaurus (choose classic template)
npx create-docusaurus@latest . classic

# Install dependencies
npm install
```

## 3. Create Documentation Structure

```bash
cd ~/docs-dexetera/dexetera

# Create docs pages
cat > docs/intro.md << 'EOF'
---
id: intro
sidebar_position: 1
title: Intro
---
# Welcome to Dexetera

Dexetera is a decentralized finance platform built on Arbitrum.

## Key Features
- Lightning-fast transactions
- Multisig security
- DEX/DAO integration
EOF

cat > docs/how-it-works.md << 'EOF'
---
sidebar_position: 2
title: How It Works
---
# How Dexetera Works

## Architecture
1. **Frontend**: React + Docusaurus
2. **Backend**: FastAPI + Hyperliquid  
3. **Blockchain**: Arbitrum + Bitcoin multisig

## Flow
```
User → DEX → Arbitrum → Settlement
```
EOF

cat > docs/who-we-are.md << 'EOF'
---
sidebar_position: 3
title: Who We Are
---
# The Team

## Founders
- **Full-stack developer** from Italy
- **DeFi specialist** with Web3 experience

## Tech Stack
- Python/FastAPI, Node.js
- Blockchain: Arbitrum, Hyperliquid
- Frontend: React, Docusaurus
EOF
```

## 4. Configure Docusaurus

**`docusaurus.config.js`** (navbar: Dexetera Docs + What is Dexetera?)
```javascript
const config = {
  title: 'Dexetera Docs',
  tagline: 'Trade what you want',
  favicon: 'img/favicon.ico',
  url: 'https://doc.dexetera.win',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  i18n: { defaultLocale: 'en', locales: ['en'] },
  presets: [
    ['classic', {
      docs: { sidebarPath: './sidebars.js' },
      blog: { showReadingTime: true },
      theme: { customCss: './src/css/custom.css' },
    }],
  ],
  themeConfig: {
    colorMode: { respectPrefersColorScheme: true },
    navbar: {
      title: 'Dexetera Docs',
      items: [
        { type: 'docSidebar', sidebarId: 'tutorialSidebar', position: 'left', label: 'Dexetera Docs' },
        { to: '/', label: 'What is Dexetera?', position: 'right' },
      ],
    },
    footer: { style: 'dark', copyright: `Copyright © ${new Date().getFullYear()} Dexetera.` },
    prism: { theme: prismThemes.github, darkTheme: prismThemes.dracula },
  },
};
export default config;
```

**`sidebars.js`**:
```javascript
module.exports = {
  tutorialSidebar: [
    'intro',
    'how-it-works', 
    'who-we-are',
  ],
};
```

**Homepage `src/pages/index.js`**:
```javascript
import React from 'react';
import Layout from '@theme/Layout';
import Link from '@docusaurus/Link';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import styles from './styles.module.css';

export default function Home() {
  const {siteConfig} = useDocusaurusContext();
  return (
    <Layout title={siteConfig.title} description="Dexetera Documentation">
      <main className={styles.main}>
        <div className={styles.hero}>
          <h1 className={styles.title}>Welcome to Dexetera</h1>
          <p className={styles.subtitle}>
            Dexetera is a decentralized finance platform built on Arbitrum.
          </p>
          <div className={styles.buttons}>
            <Link className={styles.buttonPrimary} to="/docs/intro">
              Read Documentation
            </Link>
          </div>
        </div>
        <div className={styles.features}>
          <h2>Key Features</h2>
          <ul>
            <li>Lightning-fast transactions</li>
            <li>Multisig security</li>
            <li>DEX/DAO integration</li>
          </ul>
        </div>
      </main>
    </Layout>
  );
}
```

**`src/pages/styles.module.css`**:
```css
.main { padding: 4rem 0; }
.hero { text-align: center; padding: 4rem 2rem; max-width: 800px; margin: 0 auto; }
.title { font-size: 3rem; margin-bottom: 1rem; }
.subtitle { font-size: 1.5rem; opacity: 0.8; margin-bottom: 2rem; }
.buttons { margin: 2rem 0; }
.buttonPrimary { 
  background: var(--ifm-color-primary); 
  color: white; 
  padding: 1rem 2rem; 
  border-radius: 6px; 
  font-weight: 600; 
  text-decoration: none; 
}
.features { padding: 4rem 2rem; text-align: center; }
.features ul { list-style: none; padding: 0; }
.features li { font-size: 1.2rem; margin: 1rem 0; }
```

## 5. Nginx Configuration

```bash
sudo nano /etc/nginx/sites-available/doc.dexetera.win
```

**Content:**
```nginx
server {
    listen 80;
    listen [::]:80;
    server_name doc.dexetera.win;
    root /var/www/doc.dexetera.win;
    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
    }

    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ {
        expires 1y;
        add_header Cache-Control "public, immutable";
    }
}

server {
    listen 443 ssl http2;
    listen [::]:443 ssl http2;
    server_name doc.dexetera.win;

    root /var/www/doc.dexetera.win;
    index index.html;

    ssl_certificate /etc/letsencrypt/live/doc.dexetera.win/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/doc.dexetera.win/privkey.pem;
    include /etc/letsencrypt/options-ssl-nginx.conf;
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem;

    location / {
        try_files $uri $uri/ /index.html;
    }

    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ {
        expires 1y;
        add_header Cache-Control "public, immutable";
    }
}
```

```bash
# Enable site
sudo ln -sf /etc/nginx/sites-available/doc.dexetera.win /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx

# Get SSL certificate
sudo certbot --nginx -d doc.dexetera.win
```

## 6. Create Deployment Script

```bash
cat > ~/deploy.sh << 'EOF'
#!/bin/bash
cd /root/docs-dexetera/dexetera
npm run build
sudo rm -rf /var/www/doc.dexetera.win/*
sudo cp -r build/* /var/www/doc.dexetera.win/
sudo chown -R www-data:www-data /var/www/doc.dexetera.win
sudo systemctl is-active --quiet nginx && sudo systemctl reload nginx || sudo systemctl restart nginx
echo "Deployed at $(date)"
EOF

chmod +x ~/deploy.sh
```

## 7. First Deploy

```bash
sudo mkdir -p /var/www/doc.dexetera.win
~/deploy.sh
```

## 8. Daily Workflow

```bash
# Edit docs/*.md files
nano docs/new-feature.md

# Deploy changes
~/deploy.sh
```

## URLs After Setup
- https://doc.dexetera.win/ → Homepage (What is Dexetera?)
- https://doc.dexetera.win/docs/intro → Documentation sidebar
- https://doc.dexetera.win/docs/how-it-works
- https://doc.dexetera.win/docs/who-we-are

## Troubleshooting

**500 Error:** Check nginx error log
```bash
sudo tail -n 20 /var/log/nginx/error.log
```

**Permission denied:** Fix webroot permissions
```bash
sudo chown -R www-data:www-data /var/www/doc.dexetera.win
sudo chmod -R 755 /var/www/doc.dexetera.win
```

**Nginx warnings:** Remove duplicate server_name in configs
```bash
sudo nginx -T | grep -i conflicting
```

**Test deployment:**
```bash
curl -I https://doc.dexetera.win
# Expect: HTTP/2 200
