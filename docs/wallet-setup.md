---
id: wallet-setup
sidebar_position: 5
title: Wallet Setup
---

# Setting Up Your Wallet for Dexetera

Before you can trade on Dexetera, you need a **crypto wallet** that supports the Arbitrum network. This guide walks you through the setup process.

## What is a Crypto Wallet?

A crypto wallet is software that stores your private keys and lets you access your cryptocurrency. Think of it like:

- **Bank account** without a bank
- **Personal safe** that only you can open
- **Key** to access your money on the blockchain

**Important**: Only you can access your wallet. If you lose your private keys, your money is gone forever. Dexetera cannot recover it.

## Supported Wallets

Dexetera works with any wallet that supports Arbitrum:

### Popular Wallets

| Wallet | Best For | Ease | Security |
|--------|----------|------|----------|
| **MetaMask** | Beginners | Very Easy | Good (browser extension) |
| **Phantom** | Solana users | Easy | Good (browser extension) |
| **Wallet Connect** | Mobile users | Easy | Very Good (redirect) |
| **Coinbase Wallet** | Coinbase users | Easy | Good (dedicated app) |
| **Trust Wallet** | Mobile users | Easy | Good (mobile app) |

### Best for Dexetera

**MetaMask** is recommended for beginners because:
- Works on desktop and mobile
- Clear user interface
- Wide support across DeFi platforms
- Extensive documentation

## Step-by-Step: Setting Up MetaMask

### 1. Install MetaMask

**On Desktop (Chrome, Firefox, Safari, Edge)**:
1. Go to [https://metamask.io](https://metamask.io)
2. Click "Download"
3. Select your browser
4. Click "Add Extension"
5. Confirm installation

**On Mobile (iPhone or Android)**:
1. Open App Store (iPhone) or Google Play (Android)
2. Search "MetaMask"
3. Download the official MetaMask app by ConsenSys
4. Open the app

### 2. Create a New Wallet

**First Time Setup**:
1. Open MetaMask
2. Click "Create a new wallet"
3. Click "I agree" to Terms
4. Create a **strong password** (12+ characters, mix of letters/numbers/symbols)
5. Write down and store your password somewhere safe

### 3. Save Your Seed Phrase (CRITICAL)

MetaMask will give you a **seed phrase** (12 or 24 words).

**Important**:
- This is your **master key** to everything in the wallet
- Anyone with this phrase can steal all your money
- MetaMask cannot help if you lose it
- Never share it with anyone
- Never type it online or in emails

**How to store it safely**:
1. Write it on paper and store in a safe place
2. Use a password manager (1Password, Bitwarden)
3. Store in a physical safe or safe deposit box
4. DO NOT take screenshots
5. DO NOT save in cloud storage
6. DO NOT email it to yourself

### 4. Verify Your Seed Phrase

MetaMask asks you to verify a few words from your seed phrase. This proves you wrote it down correctly.

**Do not skip this step.**

### 5. Set Up Complete

Your MetaMask wallet is now ready:
- You have a public address (visible to others)
- You have a private key (never share)
- You have a seed phrase (backup for emergencies)

## Connecting Arbitrum Network to MetaMask

Dexetera runs on **Arbitrum**, not Ethereum mainnet. You need to add Arbitrum to your wallet.

### Option A: Auto-Add (Easy)

When you connect to Dexetera:
1. Go to Dexetera website
2. Click "Connect Wallet"
3. MetaMask will ask "Add Arbitrum network?"
4. Click "Approve"
5. Arbitrum is now in your wallet

### Option B: Manual Add

If auto-add doesn't work:

1. Open MetaMask
2. Click the network dropdown (top left, shows "Ethereum Mainnet")
3. Click "Add Network"
4. Fill in these details:

   ```
   Network Name: Arbitrum One
   RPC URL: https://arb1.arbitrum.io/rpc
   Chain ID: 42161
   Currency Symbol: ETH
   Block Explorer: https://arbiscan.io
   ```

5. Click "Save"
6. Switch to Arbitrum

**MetaMask will now show "Arbitrum One" instead of "Ethereum Mainnet".**

## Adding USDC to Your Wallet Display

Dexetera uses **USDC on Arbitrum**. To see your USDC balance in MetaMask:

### Get the USDC Contract Address

On Arbitrum, USDC address is:
```
0xFF970A61A04b1cA14834A43f5dE4533eBDDB5F86
```

### Add USDC Token

1. Open MetaMask
2. Make sure you're on Arbitrum network
3. Click "Import tokens"
4. Paste the USDC address above
5. Click "Add"
6. USDC now shows in your wallet

**Now you'll see USDC balance alongside your ETH balance.**

## Funding Your Wallet: Getting USDC on Arbitrum

Before trading, you need USDC on Arbitrum. See [Funding USDC](./funding-usdc.md) for detailed instructions.

**Quick summary**:
- Option 1: Have USDC on Ethereum mainnet? Bridge it to Arbitrum
- Option 2: Buy USDC directly on Arbitrum (via Coinbase or other exchanges)
- Option 3: Convert ETH to USDC using a DEX like Uniswap

## Security Best Practices

### Protect Your Wallet

1. **Use a strong password**
   - 12+ characters
   - Mix uppercase, lowercase, numbers, symbols
   - Don't use personal information

2. **Enable security features**
   - Turn on two-factor authentication (2FA) if available
   - Use biometric lock (fingerprint/face ID) on mobile

3. **Verify addresses carefully**
   - Always check URLs start with `https://`
   - Never click links from emails or texts
   - Type Dexetera URL directly in browser

4. **Use hardware wallets for large amounts**
   - Ledger, Trezor, or other hardware wallets
   - More secure than browser extensions
   - Recommended for 1000+ USDC

### Common Phishing Attacks

**Scammers may try**:
- Send fake transaction links
- Impersonate support staff
- Create fake "login" websites
- Ask for your seed phrase

**You should never**:
- Click links from unknown sources
- Give your seed phrase to ANYONE
- Share your private key
- Approve transactions you didn't initiate

**If something feels wrong, it probably is.**

## Connecting Wallet to Dexetera

Once your wallet is set up with USDC on Arbitrum:

1. Go to Dexetera website
2. Click "Connect Wallet" (usually top right)
3. Select your wallet type (MetaMask, Phantom, etc.)
4. Approve connection in wallet popup
5. Your wallet address appears on the website

**You're now connected and ready to trade.**

## Testing Your Setup

Before trading real money:

1. **Deposit small amount**: Send 10-20 USDC first
2. **View contract**: Browse available contracts
3. **Dry run**: Don't trade yet—just explore
4. **Check fees**: Understand how much you'll pay
5. **Small trade**: Open a tiny position to test

## Troubleshooting

### "Network not supported"
- Make sure Arbitrum is added to your wallet
- Switch to Arbitrum network before connecting

### "No USDC visible"
- Add USDC token using contract address above
- Make sure you're on Arbitrum network (not Ethereum)

### "Can't connect wallet"
- Refresh page
- Disconnect and reconnect wallet
- Try different browser if using extension
- Make sure popup blockers are disabled

### "Transaction rejected"
- Insufficient gas (need small amount of ETH for non-trade transactions)
- Insufficient USDC balance
- Wallet not on Arbitrum network

**Note: While all trades on Dexetera are gas-free, you still need a small amount of ETH on Arbitrum in your wallet. This will be used for non-trade transactions, like depositing USDC token on Dexetera, or interacting with other DeFi protocols.**



## What's Next?

- **Get USDC**: [Funding USDC](./funding-usdc.md)
- **Start trading**: [Trading Basics](./trading-basics.md)
- **Security tips**: [Risk & Liquidation](./risk-liquidation.md)

---

**Remember**: Your seed phrase is your responsibility. Never share it. Never lose it. Store it securely.