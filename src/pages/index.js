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
            <Link 
              className={styles.buttonPrimary}
              to="/docs/intro">
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
