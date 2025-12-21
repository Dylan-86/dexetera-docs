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

### Q: What if I forget my password?

A: **There is no password to remember.**

Your wallet password (MetaMask, Phantom, etc.) is your security, not Dexetera's.

If you forget wallet password:
1. Recover using seed phrase
2. See your wallet's recovery process
3. Dexetera has nothing to do with it

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

A: **[SPECIFY_MINIMUM] USDC**

But practically, you need to account for:
- Minimum amount to open position
- Trading fees
- Gas fees

**Recommended**: Start with [RECOMMENDED_MIN] USDC to have room for learning.

### Q: Can I partially close a position?

A: **[Specify: Yes/No based on Dexetera features]**

Currently: You close entire position at once. No partial closes.

(May be added in future)

### Q: How long can I hold a position?

A: **Until contract expiration (1 year maximum).**

You can hold for:
- Minutes (day trade)
- Days (swing trade)
- Months (position trade)
- Up to 1 year (contract expires)

Before expiration, you can:
- Close position (lock in profit/loss)
- Roll over (move to next contract)

### Q: Can I set a stop loss automatically?

A: **[Specify: Yes/No based on Dexetera features]**

Currently: [SPECIFY] You must monitor and close manually.

(Stop loss automation may be added)

**For now**: Set price alerts in MetaMask or another service, then close manually when alert triggers.

### Q: What happens if I don't close before expiration?

A: **Position auto-settles at oracle price.**

Steps:
1. Contract reaches Day 365 (expiration date)
2. Oracle provides final settlement price
3. Your position closes automatically
4. Profit/loss calculated
5. Funds sent to your wallet in USDC

**No action needed**, but you won't be able to extend after this point.

### Q: Can I roll over multiple times?

A: **Yes.** You can roll over as many times as you want.

Each roll-over:
- Costs a fee
- Moves position to next 1-year contract
- Restarts liquidation price calculation
- Gives another year to trade

### Q: Is there a maximum leverage?

A: **[SPECIFY_MAXIMUM]x maximum.**

Leverage limits depend on:
- Contract type
- Your account history
- Platform risk management

Start conservatively, build reputation, increase over time.

## Fees & Costs Questions

### Q: Why do I pay fees?

A: Fees fund:
- Platform development
- Server infrastructure
- Security audits
- Team salaries
- Community support

### Q: Can fees change?

A: **[Specify: Yes/No]**

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

### Q: Can I reduce fees?

A: **No volume discounts** currently.

Fee reduction strategies:
1. Hold longer (fewer trades = fewer fees)
2. Use less leverage (smaller positions = lower fees)
3. Bundle positions (fewer open trades)
4. Wait for fee reductions (may happen in future)

### Q: Do I pay fees even if I lose?

A: **Yes.** Fees are charged regardless of P&L.

```
Example:
Opened at $50,000 (paid fee)
Price drops to $40,000 (position loses money)
Close position (pay fee again)

Total cost: Deposit + Fee + Fee + Loss
```

This is why fees matter more with leverage.

## Technical Issues

### Q: My position won't open - "Insufficient funds"

**Cause**: You don't have enough USDC for:
- Position amount
- Opening fee
- Gas fee
- Margin reserve

**Fix**:
1. Add more USDC to wallet
2. Or reduce position size
3. Or use less leverage

**Check**:
```
Total needed = Amount + (Amount × Leverage × Fee%) + Gas
```

### Q: Position is stuck/frozen

**Cause**: Usually blockchain confirmation delay

**Fix**:
1. Refresh page
2. Wait 2-5 minutes
3. Check on Arbiscan.io for transaction status
4. If "failed" - it was rejected, funds returned

### Q: Can't connect wallet

**Causes & Fixes**:

1. **Wrong network**
   - Switch wallet to Arbitrum network
   - Not Ethereum mainnet!

2. **Browser extension disabled**
   - Make sure MetaMask/Phantom extension is ON
   - Refresh page

3. **Popup blocked**
   - Allow popups for Dexetera domain
   - Try different browser if issue persists

4. **Wallet not installed**
   - Download MetaMask from official site
   - Not from random download link

### Q: Gas fee too high

**Note**: Gas fees are NOT Dexetera fees. They're Arbitrum network costs.

**Causes**:
- Network congestion (high demand)
- Complex transaction

**Fixes**:
1. Try again later (when network is less busy)
2. Gas fees fluctuate by time of day/week
3. Usually very low on Arbitrum (cheaper than Ethereum)

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
1. Check on Arbiscan.io
   - Paste your wallet address
   - Look for your transaction
2. If "failed" - funds returned, try again
3. If "pending" - wait up to 10 minutes
4. If still pending after 10 min - contact support

### Q: Liquidation happened too fast

**Why it's fast**:
- Smart contracts don't have emotions
- They execute instantly when price hits limit
- No human can stop it

**Prevention**:
1. Use lower leverage (5x or less)
2. Monitor position constantly
3. Close before liquidation price
4. Don't use high leverage on volatile assets

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

### Q: My position shows loss - should I close it?

**Decision depends**:
- Is loss due to temporary price swing? → Maybe hold
- Are you below stop loss? → Close now
- Getting close to liquidation? → Close immediately

**Rule**: Don't hold losses hoping they recover. Have a plan.

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
2. Settlement at oracle price
3. Profit/loss in your wallet
4. Done (no action needed from you)

### Q: Can the oracle be manipulated?

A: **Theoretically possible but unlikely.**

Dexetera uses:
- Established data sources (CoinGecko, Chainlink, etc.)
- Multiple oracle feeds
- Dispute resolution mechanism

For custom contracts, creator chooses oracle. Choose reputable sources.

### Q: What if oracle disappears?

A: **Contract becomes unresolvable.**

Dexetera will:
- [SPECIFY: Pause contract / Use fallback oracle / Other procedure]

Currently: [SPECIFY YOUR PROCEDURE]

This is why you should check oracle reliability before trading.

### Q: Can I create a contract on anything?

A: **Theoretically yes, practically depends on oracle.**

Requirements:
- Metric must be measurable
- Oracle must exist and be available
- Metric must be publicly verifiable
- Shouldn't cause manipulation incentives

Examples that work:
- ✓ Bitcoin price (clear, measurable, oracle exists)
- ✓ Stock price (clear, measurable, data available)
- ✓ Weather data (measurable, APIs exist)

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

Smart contracts are transparent and audited.

### Q: What if my wallet gets hacked?

A: **Funds can be stolen if hacker gets private key.**

**Protection**:
1. Use hardware wallet (Ledger, Trezor) for large amounts
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
- Audited by security firms
- Transparent transactions
- You don't trust Dexetera, you trust the code

## Still Have Questions?

Not found answer here? Check:

1. **[Documentation](#)** - Full technical docs
2. **Discord** - Community support
3. **Twitter** - Announcements and updates
4. **Email**: [support@dexetera.win]

---

**Remember**: If something feels wrong, it probably is. Don't trade when unsure. Ask questions first.