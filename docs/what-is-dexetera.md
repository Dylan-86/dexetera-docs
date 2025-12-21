---
id: what-is-dexetera
sidebar_position: 2
title: What is Dexetera?
---

# What is Dexetera?

Dexetera is a **decentralized exchange (DEX)** for trading synthetic futures contracts. Unlike centralized exchanges (like Coinbase or Kraken), Dexetera has no company, no central authority, and no KYC requirements. It operates entirely through smart contracts on the Arbitrum blockchain.

## Core Concepts Explained

### Decentralized vs. Centralized

**Centralized Exchange (CEX)**
- A company controls your funds
- You trust the company with your money
- They collect personal information (KYC)
- They can freeze accounts or restrict access
- Risk: Company gets hacked or goes bankrupt

**Decentralized Exchange (DEX) like Dexetera**
- Smart contracts control the trading mechanism
- You always control your own wallet and private keys
- No personal information required
- No company can freeze your account
- Risk: Only you are responsible for your wallet security

### Futures Contracts

A **futures contract** is an agreement to buy or sell something at a future date. On Dexetera:

- **1-year expiration**: Each contract lasts for 1 year from creation
- **Price prediction**: You predict if a price will go up or down
- **Leverage**: You can control larger positions with smaller deposits (amplifies both gains and losses)
- **Settlement**: When the contract expires, it settles based on the final price

**Example**: You create a futures contract on "Bitcoin price" expiring in 1 year. You go LONG (bet it goes up) with 10 USDC at 5x leverage. If Bitcoin goes up 20%, you might make a profit. If it goes down 20%, you might lose your entire deposit.

### USDC: Why We Use It

**USDC (USD Coin)**
- A stablecoin pegged to the US Dollar
- 1 USDC = 1 USD (in theory)
- Built on Arbitrum blockchain
- Easier to understand than other cryptocurrencies
- Reduces confusion about deposits and withdrawals

All Dexetera transactions use USDC on Arbitrum. You cannot trade with Bitcoin, Ethereum, or other cryptocurrencies directly on Dexetera.

### Arbitrum Network

**Arbitrum** is a **Layer 2 blockchain** that runs "on top of" Ethereum:

- **Faster**: Transactions confirm in seconds, not minutes
- **Cheaper**: Gas fees are 100-1000x lower than Ethereum mainnet
- **Safe**: Backed by Ethereum's security
- **Same assets**: You can use Ethereum-based tokens like USDC

Before using Dexetera, you need USDC on Arbitrum. If you have USDC on Ethereum or another blockchain, you'll need to bridge it first.

## The Dexetera Trading Model

### User-Created Markets

Unlike traditional exchanges where a company decides what you can trade, **on Dexetera, anyone can create a new contract**:

- Create a contract on Bitcoin price
- Create a contract on the weather temperature in Tokyo
- Create a contract on sports scores
- Create a contract on any measurable metric

The creator sets:
- The metric being tracked
- The initial price or starting point
- The data source (oracle) that determines the final price

### Anyone Can Trade

Once a contract exists, any user can:
- Go **LONG** (bet the metric goes up)
- Go **SHORT** (bet the metric goes down)
- Use leverage (optional, controlled by the user)
- Close positions anytime before expiration
- Roll over to extend before expiration

### No Company Approval

You don't need Dexetera's permission to:
- Create new contracts
- Trade existing contracts
- Use leverage
- Withdraw your money

Everything is **permissionless**—controlled by smart contracts, not people.

## Dexetera vs. Other Exchanges

| Aspect | Dexetera | Centralized Exchange | Traditional Broker |
|--------|----------|----------------------|-------------------|
| **Control** | You (wallet) | Company | Company |
| **KYC** | No | Yes | Yes |
| **Speed** | Instant (blockchain) | 1-2 seconds | Instant |
| **Privacy** | High | Low | Low |
| **Asset variety** | Any measurable metric | Pre-selected assets | Limited |
| **Leverage** | User-controlled | Company-controlled | Company-controlled |
| **Fees** | Transparent (blockchain) | Hidden | Hidden |
| **24/7 trading** | Yes | Limited | Limited |

## Important: This is Advanced Trading

Dexetera is **not for beginners** learning basic investing. It's designed for:

- Experienced traders comfortable with leverage
- People who understand smart contracts and blockchain
- Users who accept the risk of losing their deposit
- Traders seeking alternative assets and markets

### Risks You Must Understand

1. **Leverage Amplifies Losses**: 5x leverage means a 20% loss wipes out your deposit
2. **Liquidation**: If your position loses enough value, it can be automatically closed
3. **No Customer Support**: If you send funds to the wrong address, they're gone
4. **Smart Contract Risk**: Even decentralized exchanges have technical risks
5. **Market Risk**: The metric you're trading could move against you quickly

### You Are Responsible

- Dexetera has no insurance on deposits
- There's no way to reverse transactions
- You control your private keys—no recovery option
- You must secure your wallet against phishing and hacks

## How Dexetera Makes Money (Fees)

Dexetera charges **trading fees** when you:
- Open a position
- Close a position
- Roll over a contract

These fees are:
- **Transparent**: Shown before you trade
- **Blockchain-recorded**: You can verify them on-chain
- **Used to improve the platform**: Funding development and infrastructure

## What's Next?

- **How does trading work?** → [How It Works](./how-it-works.md)
- **Ready to start?** → [Wallet Setup](./wallet-setup.md)
- **Understand contracts?** → [Contracts & Futures](./contracts-futures.md)

---

**Remember**: Only trade with money you can afford to lose. Leverage trading carries significant risk.