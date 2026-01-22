---
id: faq-troubleshooting
sidebar_position: 12
title: FAQ & Troubleshooting
---

# Frequently Asked Questions & Troubleshooting

This page answers common questions and helps solve problems you might encounter on Dexetera.

## Account & Wallet Questions

### Q: Do I need a Dexetera account?

A: **No account needed.** You just connect your wallet. Your wallet IS your account.

- No username/password
- No email verification
- No personal information required
- Connect wallet = Done

If someone asks you for your password, it's a scam. If you see a website that claims to be Dexetera and asks for your password, it's a scam. If you see a website that claims to be Dexetera and asks for your private key, it's a scam. No one at Dexetera will ask for your private key, and you should never share it with anyone.

### Q: What if I forget my password?

A: **There is no password to remember.**

Your wallet password (MetaMask, Phantom, etc.) is your security, not Dexetera's.

If you forget wallet password:
1. Recover using seed phrase
2. See your wallet's recovery process
3. Dexetera has nothing to do with it

Remember: Dexetera doesn't have access to your private key, it cannot recover it for you, and Dexetera will never ask for your private key.

### Q: Can someone else access my account?

A: **No.** Unless they have your private keys or seed phrase.

Your wallet is yours alone. Dexetera doesn't have access.

### Q: Is my information safe?

A: **Yes.** Dexetera doesn't collect personal information.

What's visible:
- Your wallet address (public)
- Your transaction history (public, on blockchain)

What's NOT visible:
- Your identity
- Your real name
- Your location
- Your email
- Your phone number

## Trading Questions

### Q: What's the minimum deposit?

A: **1 USDC**

But practically, you need to account for:
- Minimum amount to open position 
- Trading fees
- Gas fees to deposit (trading is completely gas-less and you will only have to pay gas fees to deposit and authorize the trading)

**Recommended**: Start with 100 USDC to have room for learning.

### Q: Can I partially close a position?

A: **Yes.**

You can buy and sell futures and partially close your positions.

### Q: How long can I hold a position?

A: **Until contract expiration (1 year maximum).**

You can hold for:
- Minutes (day trade)
- Days (swing trade)
- Months (position trade)
- Until the contract expiration

Before expiration, you can:
- Close position (lock in profit/loss)
- Roll over (move to next contract)

### Q: Can I set a stop loss automatically?

A: **Yes**

You can set a stop loss automatically.

### Q: What happens if I don't close before expiration?

A: **Position auto-settles at the last price of the underlying asset at the time of expiration.**

### Q: Can the data source be manipulated?

- No, when a contract is created, our AI validates the data source. We only accept reputable data sources that are not supposed to be manipulated.

### Q: What if data source disappears?

- Settlement will be based on the last available price from the data source before it disappeared

Steps:
1. Contract reaches Day 365 (expiration date)
2. Data Source provides final settlement price
3. Your position closes automatically
4. Profit/loss calculated
5. Funds sent to your wallet in USDC

**No action needed**, but you won't be able to trade further this future after this point.

### Q: Can I roll over multiple times?

A: **Yes.** You can roll over as many times as you want.

Each roll-over:
- Costs a fee
- Moves position to next 1-year contract
- Restarts liquidation price calculation
- Gives another year to trade

### Q: Can I trade with leverage?

A: **No**

Right now, leverage is not supported.

## Fees & Costs Questions

### Q: Why do I pay fees?

A: Fees fund:
- Platform development
- Server infrastructure
- Security audits
- Team salaries
- Community support

### Q: Can fees change?

A: **Yes**

Currently: Fees are [CURRENT_RATES].

Dexetera may adjust fees in future:
- To improve economics
- To compete with other platforms
- To fund development

Users will be notified in advance.

### Q: Are there hidden fees?

A: **No hidden fees.**

You pay:
- Opening fee (shown before trading)
- Closing fee (shown before closing)
- Roll-over fee (shown before rolling)
- Gas fee (shown in wallet)

All fees visible before confirming transaction.

### Q: Are there ways to reduce fees?

A: **No volume discounts** currently.

Fee reduction strategies:
1. Hold longer (fewer trades = fewer fees)
2. Bundle positions (fewer open trades)
3. Wait for fee reductions (may happen in future)

### Q: Do I pay fees even if I lose?

A: **Yes.** Fees are charged regardless of P&L.

```
Example:
Opened at $50,000 (paid fee)
Price drops to $40,000 (position loses money)
Close position (pay fee again)

Total cost: Deposit + Fee + Fee + Loss
```

## Technical Issues

### Q: My position won't open - "Insufficient funds"

**Cause**: You don't have enough USDC for:
- Position amount
- Opening fee


**Fix**:
1. Add more USDC to wallet
2. Or reduce position size

**Check**:
```
Total needed = Amount + (Amount × Leverage × Fee%)
```

### Q: Position is stuck/frozen

**Cause**: Usually blockchain confirmation delay

**Fix**:
1. Refresh page
2. Wait 2-5 minutes
3. Check on Hyperliquid blockchain for transaction status
4. If "failed" - it was rejected, funds returned

### Q: Can't connect wallet

**Causes & Fixes**:

1. **Wrong network**
   - Switch wallet to Arbitrum network
   - Not Ethereum mainnet!

2. **Browser extension disabled**
   - Make sure MetaMask or your wallet extension is ON
   - Refresh page

3. **Popup blocked**
   - Allow popups for Dexetera domain
   - Try different browser if issue persists

4. **Wallet not installed**
   - Download MetaMask or your wallet from official site
   - Not from random download link

### Q: USDC balance shows zero even though I have funds

**Causes**:

1. **Wrong network**
   - MetaMask set to Ethereum, not Arbitrum
   - Need USDC on Arbitrum specifically

2. **Token not imported**
   - MetaMask may not auto-detect USDC
   - Need to manually add token

**Fix**:
1. Switch network to Arbitrum
2. Click "Import tokens"
3. Paste: 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5F86
4. USDC balance appears

### Q: Transaction pending forever

**Causes**:
- Network overload
- Insufficient gas
- Transaction error

**Fix**:
1. If "pending" - wait up to 10 minutes
2. If still pending after 10 min - contact support

## Position & Trading Questions

### Q: What's the difference between LONG and SHORT?

**LONG** = Betting price goes UP
**SHORT** = Betting price goes DOWN

See [Trading Basics](./trading-basics.md) for details.

### Q: Can I change my position (switch LONG to SHORT)?

A: **No direct switch.**

Process:
1. Close LONG position (get USDC back)
2. Open SHORT position (use USDC)

Or open opposite position while keeping first one open (two positions at once).

### Q: Can I borrow money to trade?

A: **No.** Dexetera doesn't allow borrowing.

You can only trade:
- USDC you own
- USDC in your wallet

### Q: What if price gaps through my stop loss?

**Example**:
- Stop loss set at $48,000
- Price jumps from $49,000 to $47,000 (skips $48,000)
- Your position liquidates at gap price, not stop

This can happen in volatile markets. That's why stop losses aren't 100% guaranteed.

## Contract & Expiration Questions

### Q: When does a contract expire?

A: **1 year from creation.**

Example:
- Created: January 1, 2026
- Expires: January 1, 2027
- Roll over available: November 1, 2026

### Q: What if I don't roll over before expiration?

A: **Position auto-settles.**

1. Automatic closure at expiration
2. Settlement at Data Source price
3. Profit/loss in your wallet
4. Done (no action needed from you)

### Q: Can the Data Source be manipulated?

A: **Theoretically possible but unlikely.**

Dexetera uses:
- Established data sources (CoinGecko, Chainlink, etc.)
- Multiple Data Source feeds
- Dispute resolution mechanism

For custom contracts, creator chooses Data Source. Choose reputable sources.

### Q: What if Data Source disappears?

A: **Contract becomes unresolvable.**

Dexetera will:
- [SPECIFY: Pause contract / Use fallback Data Source / Other procedure]

Currently: [SPECIFY YOUR PROCEDURE]

This is why you should check Data Source reliability before trading.

### Q: Can I create a contract on anything?

A: **Theoretically yes, practically depends on Data Source.**

Requirements:
- Metric must be measurable
- Data Source must exist and be available
- Metric must be publicly verifiable
- Shouldn't cause manipulation incentives

Examples that work:
- ✓ Bitcoin price (clear, measurable, Data Source exists)
- ✓ Stock price (clear, measurable, data available)
- ✓ Weather data like temperature, total rainfall in mm(measurable, APIs exist)

Examples that don't work:
- ✗ "Something amazing happens" (too vague)
- ✗ "Bitcoin price: I'll decide" (not objective)
- ✗ "Weather but only if cloudy" (subjective)

## Security Questions

### Q: Is my private key safe?

A: **Only as safe as your device.**

Security layers:
- MetaMask/wallet encrypts key locally
- Key never shared with Dexetera
- Key stored only on YOUR device

**Your responsibility**:
- Strong password for wallet
- Protect your seed phrase
- Don't use wallet on public WiFi
- Don't connect to phishing sites

### Q: Can Dexetera steal my funds?

A: **No.** Funds held in smart contracts, not Dexetera servers.

- Dexetera never has access to your keys
- Dexetera can't freeze accounts
- Dexetera can't reverse trades

Smart contracts are transparent.

### Q: What if my wallet gets hacked?

A: **Funds can be stolen if hacker gets private key.**

**Protection**:
1. Use hardware wallet (like Trezor) for large amounts
2. Never share private key
3. Use strong passwords
4. Don't click suspicious links
5. Verify URLs (no typos)

**If hacked**:
- Your funds in smart contracts are vulnerable
- Move remaining funds immediately
- Cannot be recovered by Dexetera

### Q: Should I trust Dexetera?

A: **Smart contracts are trustless, not trust-requiring.**

- Code is open-source (verifiable)
- Transparent transactions
- You don't have to trust Dexetera, you trust the code

## Still Have Questions?

Not found answer here? Check:

1. **[Documentation](#)** - Full technical docs
2. **Discord** - Community support
3. **Twitter** - Announcements and updates
4. **Email**: [admin@dexetera.xyz]

---

**Remember**: If something feels wrong, it probably is. Don't trade when unsure. Ask questions first.