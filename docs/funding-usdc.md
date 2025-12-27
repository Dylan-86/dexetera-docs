---
id: funding-usdc
sidebar_position: 6
title: Funding Your Account
---

# How to Get USDC on Arbitrum

Dexetera trades only in **USDC on Arbitrum**. This guide shows you how to get USDC into your wallet.

## Quick Overview

To trade on Dexetera, you need:
- **USDC** (USD Coin stablecoin)
- **On Arbitrum network** (not Ethereum or other blockchains)
- **In your wallet** (MetaMask or other supported wallet)

You have three main options:

1. **Bridge USDC** - If you already have USDC on Ethereum
2. **Buy directly** - Purchase USDC on Arbitrum from an exchange
3. **Swap** - Convert another crypto (like ETH) to USDC on Arbitrum

## Option 1: Bridge USDC from Ethereum (Easiest if You Have USDC)

This is the fastest way if you already own USDC on Ethereum mainnet.

### Step-by-Step Bridge

#### Step 1: Prepare

You need:
- USDC on Ethereum mainnet in your wallet
- Small amount of ETH (~$10-20 worth) for gas fees for depositing USDS on Dexetera 
- Connected wallet (MetaMask)

Note: All trades on Dexetera are gas-free. However, you still need ETH for non-trade transactions like depositing USDC.

Uniswap and other DEXs charge:
- **Swap fee**: 0.05-1% depending on pair
- **Gas fee**: $1-5 on Arbitrum

You don't have enough to cover:
- The amount you want to bridge
- The bridge fee
- Gas fee

You don't have enough ETH on Arbitrum for gas fees.

- Bridges and swaps have fees
- Calculate total cost (amount + fees + gas)

#### Step 2: Choose a Bridge

Popular bridges for USDC:

| Bridge | Speed | Cost | Link |
|--------|-------|------|------|
| Stargate Finance | ~5 min | Low | https://stargate.finance |
| Across Protocol | ~5 min | Very Low | https://across.to |
| Arbitrum Bridge | ~5 min | Medium | https://bridge.arbitrum.io |

**Recommended**: Across or Stargate

#### Step 3: Connect & Transfer

Using **Stargate** as example:

1. Go to https://stargate.finance
2. Click "Transfer" or "Bridge"
3. Connect wallet (approve Ethereum network)
4. Fill in:
   - **From**: Ethereum Mainnet
   - **To**: Arbitrum
   - **Token**: USDC
   - **Amount**: How much USDC to bridge
5. Review fee (usually 1-5 USDC)
6. Click "Transfer" or "Bridge"
7. Approve in your wallet
8. Wait 5-10 minutes

**Your USDC appears in your Arbitrum wallet after ~10 minutes.**

#### Step 4: Verify

1. Open MetaMask
2. Switch to Arbitrum network
3. Check USDC balance (should show on wallet)

### Bridge Transfer Fee

Bridges charge a small fee:
- **Stargate**: 1-5 USDC depending on amount
- **Across**: 0.5-2 USDC
- **Arbitrum Bridge**: 1-3 USDC

**Example**: Bridge 100 USDC, pay 2 USDC fee, receive 98 USDC on Arbitrum.

## Option 2: Buy USDC Directly on Arbitrum

If you don't have USDC on Ethereum, buy directly on Arbitrum.

### From Coinbase Exchange

#### Step 1: Set Up Coinbase

1. Go to https://coinbase.com
2. Create account (if you don't have one)
3. Verify identity (KYC required)
4. Add payment method (bank account or card)

#### Step 2: Buy USDC

1. Go to "Currencies" or search "USDC"
2. Click "Buy"
3. Enter amount (minimum $10-20)
4. Choose payment method
5. Click "Buy USDC"
6. Complete payment

**You now own USDC on Coinbase.**

#### Step 3: Withdraw to Arbitrum

1. In Coinbase, go to your USDC wallet
2. Click "Send" or "Withdraw"
3. Click "Withdraw to wallet address"
4. Paste your Arbitrum wallet address
5. **IMPORTANT**: Make sure it says "Arbitrum" as the network
6. Enter amount to withdraw
7. Confirm transaction
8. Coinbase charges withdrawal fee (~5-10 USDC)

**USDC arrives in your Arbitrum wallet in a few minutes.**

### Fees for Direct Purchase

Coinbase charges:
- **Purchase fee**: 1.5-2% of amount
- **Withdrawal fee**: 5-10 USDC (fixed)

**Example**: Buy 100 USDC → Pay ~2 USDC fee → Withdraw to Arbitrum → Pay 5 USDC fee → Receive ~93 USDC on Arbitrum.

## Option 3: Swap Crypto for USDC on Arbitrum

If you have **ETH, WBTC, or other crypto on Arbitrum**, swap it for USDC using a DEX.

### Using Uniswap (Most Popular)

#### Step 1: Prepare

You need:
- Crypto (ETH, WBTC, DAI, etc.) on Arbitrum
- Small ETH amount for gas (~$1-5)

#### Step 2: Go to Uniswap

1. Go to https://app.uniswap.org
2. Make sure Arbitrum is selected (top left)
3. Connect your wallet

#### Step 3: Swap

1. Click "Swap"
2. Select "From" token (e.g., ETH)
3. Enter amount
4. Select "To" token (USDC)
5. Review exchange rate and fee
6. Click "Swap"
7. Approve in wallet
8. Confirm transaction

**Wait 1-2 minutes. USDC appears in wallet.**

### DEX Swap Fees

Uniswap and other DEXs charge:
- **Swap fee**: 0.05-1% depending on pair
- **Gas fee**: $1-5 on Arbitrum

**Example**: Swap 1 ETH (worth ~$2,500) for USDC → Pay 0.3% (~$7.50) → Receive ~$2,492 in USDC.

## Comparing All Options

| Option | Speed | Cost | Best For |
|--------|-------|------|----------|
| **Bridge from Ethereum** | 5-10 min | 1-5 USDC | Have USDC on ETH |
| **Buy on Coinbase** | 30 min | 6-12 USDC | New to crypto |
| **Swap on Uniswap** | 2-5 min | $1-10 | Have other crypto |

## Verification Checklist

After obtaining USDC on Arbitrum:

- [ ] MetaMask shows Arbitrum network selected
- [ ] USDC balance visible in wallet (might need to import token)
- [ ] Contract address correct: `0xFF970A61A04b1cA14834A43f5dE4533eBDDB5F86`
- [ ] Balance shows correct amount
- [ ] Ready to trade!

## Troubleshooting

### "I don't see my USDC after bridge/swap"

**Fix**: USDC token may not display by default. Import it:

1. Open MetaMask
2. Make sure Arbitrum is selected
3. Click "Import tokens"
4. Paste address: `0xFF970A61A04b1cA14834A43f5dE4533eBDDB5F86`
5. Click "Add Custom Token"
6. USDC balance now visible

### "Bridge says 'Insufficient funds'"

You don't have enough to cover:
- The amount you want to bridge
- The bridge fee
- Gas fee

Solution: Send more ETH or USDC to your wallet.

### "USDC arrived on wrong network"

You selected wrong network during withdrawal.

**Cannot fix this easily.** If it happens:
1. Use a bridge to move it back
2. Or buy USDC correctly on Arbitrum

**Always double-check network selection before confirming withdrawals.**

### "Transaction pending for hours"

1. Check on https://arbiscan.io (Arbitrum block explorer)
2. Paste your wallet address
3. Look for the transaction
4. If "Failed" → Funds returned to original wallet
5. If "Pending" → Wait or contact support

### "Insufficient gas for transaction"

You don't have enough ETH on Arbitrum for gas fees.

**Fix**: Send small amount of ETH to Arbitrum address:
1. Get ETH (any exchange)
2. Bridge or buy small amount on Arbitrum
3. Retry transaction

ETH costs:
- Bridge: ~$2-5
- Swap: ~$1-3
- Transfer: ~$0.50-2

## Common Mistakes to Avoid

❌ **Sending to wrong network**
- Don't send USDC from Arbitrum to Ethereum address
- Always verify network in wallet

❌ **Sending to contract address**
- Only send to your personal wallet address
- Never send to exchange or contract address directly

❌ **Ignoring transaction fees**
- Bridges and swaps have fees
- Calculate total cost (amount + fees + gas)

❌ **Trusting unverified bridges**
- Use only official, trusted bridges
- Check official docs for correct addresses

❌ **Not verifying contract address**
- Fake USDC can be created
- Always verify correct contract address

## Getting USDC Ready for Dexetera

Once you have USDC on Arbitrum:

1. ✓ USDC in your Arbitrum wallet
2. ✓ Wallet connected to Dexetera
3. ✓ Ready to trade!

## Next Steps

- **Connect wallet to Dexetera**: [Wallet Setup](./wallet-setup.md)
- **Learn trading basics**: [Trading Basics](./trading-basics.md)
- **Understand fees**: [Fees & Pricing](./fees-pricing.md)

---

**Pro tip**: Start with small amounts while you learn. Bridge/swap $20-50 first, practice trading, then fund larger amounts.