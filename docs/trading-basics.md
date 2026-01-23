---
id: trading-basics
sidebar_position: 7
title: Trading Basics
---

# Trading Basics on Dexetera

This guide covers the fundamental concepts and steps for trading on Dexetera.

## Understanding Positions

### What is a Position?

A **position** is an active trade you have open on Dexetera. It consists of:

- **Direction**: LONG (betting up) or SHORT (betting down)
- **Amount**: How much USDC you deposited
- **Leverage**: How much bigger your position is (1x to max available)
- **Entry Price**: The price when you opened
- **Current Price**: What the price is now
- **Profit/Loss**: Your current gain or loss

**Example Position**:
```
Bitcoin/USD Futures 2026
Direction: LONG
Amount: 100 USDC
Leverage: 1x - Dexetera currently only supports 1x leverage
Entry Price: $50,000
Current Price: $55,000
Unrealized P&L: 10 USDC (10%)
```

### LONG vs SHORT Explained

#### LONG (Bullish - Betting Price Goes UP)

You think a price will **increase**.

**How it works**:
- You deposit collateral
- If price goes UP, you profit
- If price goes DOWN, you lose

**Example**:
```
Action: Open LONG position
Contract: Bitcoin/USD
Entry: $50,000
Amount: 500 USDC
If Bitcoin goes to $55,000:
  Profit: 500 USDC × (5,000/50,000) = 50 USDC ✓

If Bitcoin goes to $45,000:
  Loss: 500 USDC × (-5,000/50,000) = -50 USDC ✗

```

#### SHORT (Bearish - Betting Price Goes DOWN)

You think a price will **decrease**.

**How it works**:
- You deposit collateral
- You control position in opposite direction
- If price goes DOWN, you profit
- If price goes UP, you lose

**Example**:
```
Action: Open SHORT position
Contract: Ethereum/USD
Amount: 100 USDC at 1x leverage
Entry: $3,000

If Ethereum goes to $2,500:
  Profit: 100 USDC × (500/3,000) = 16.67 USDC ✓

If Ethereum goes to $3,500:
  Loss: 100 USDC × (-500/3,000) = -16.67 USDC ✗
```

If the price of Ethereum goes above $6,000, you will be liquidated.


## Opening a Position: Step by Step

### Step 1: Choose a Contract

1. Open Dexetera website
2. Browse available contracts
3. Click on one to view details
4. Read contract information:
   - Current price
   - Volume (how much is trading)
   - Expiration date


### Step 2: Decide Direction and Size

**Ask yourself**:
- Do I think the price will go UP (LONG) or DOWN (SHORT)?
- How much USDC can I afford to lose?

**Example Decision**:
```
"Bitcoin is trending up. I'll go LONG."
"I can afford to lose 50 USDC."
```

### Step 3: Enter Details

In the trading form, enter:

| Field | Example |
|-------|---------|
| Direction | LONG |
| Amount (USDC) | 50 |

### Step 4: Review Order

Before confirming, Dexetera shows you:

- **Entry Price**: Price you're entering at
- **Position Value**: Amount
- **Total Cost**: Your deposit + fees
- **Fee**: How much you pay

**Example Review**:
```
Entry Price: $50,000
Position Value: 150 USDC
Fee: 0.15 USDC
Total Investment: 150 USDC
```


## Managing Your Open Position

### Real-Time Monitoring

Once open, your position updates in real-time:

- **Entry Price**: Where you entered (never changes)
- **Current Price**: Live market price
- **Unrealized P&L**: Your current profit/loss
- **Return %**: Percentage return on investment

### Closing a Position

You can close your position anytime before expiration.

**Steps**:
1. Find position in "My Positions"
2. Click "Close" or "Sell"
3. Review closing price and fees
4. Confirm in wallet
5. Position closes
6. Profits/losses sent to your wallet

## Position Examples

### Example 1: Bitcoin LONG Trade

```
Setup:
- Contract: Bitcoin/USD 2026
- Direction: LONG (betting up)
- Entry Price: $50,000
- Amount: 100 USDC
- Leverage: 1x

Position Value: 100 USDC

Scenario A - Price goes UP to $55,000:
  Price move: +$5,000 (+10%)
  Your profit: 100 × ($5,000/$50,000) = 10 USDC ✓

Scenario B - Price goes DOWN to $45,000:
  Price move: -$5,000 (-10%)
  Your loss: 100 × (-$5,000/$50,000) = -10 USDC ✗
```

### Example 2: Ethereum SHORT Trade

```
Setup:
- Contract: Ethereum/USD 2026
- Direction: SHORT (betting down)
- Entry Price: $3,000
- Amount: 50 USDC
- Leverage: 1x

Position Value: 50 USDC

Scenario A - Price goes DOWN to $2,700:
  Price move: -$300 (-10%)
  Your profit: 50 × ($300/$3,000) = 5 USDC ✓

Scenario B - Price goes UP to $3,300:
  Price move: +$300 (+10%)
  Your loss: 50 × (-$300/$3,000) = -5 USDC ✗

```
## Basic Trading Rules

### Risk Management

1. **Only trade with money you can lose**
   - Never use rent or essential money
   - Assume every trade can go to zero

2. **Start small**
   - First trade: 10-20 USDC
   - Small losses help you learn without pain

3. **Set stop losses**
   - Decide ahead: "If price reaches X, I close"
   - Stick to your plan, don't get emotional

4. **Don't revenge trade**
   - Lost 50 USDC? Don't immediately open a 100 USDC trade
   - Take a break, reassess, plan carefully

### Trading Discipline

- **Have a plan before opening**: Know your target and stop
- **Set time limits**: Don't day-trade 24/7
- **Track your trades**: Record every trade to learn
- **Review losses**: Why did they happen? How to avoid next time?
- **Celebrate wins**: But don't get overconfident

## Common Beginner Mistakes


❌ **Revenge trading**
- Lost $100? Don't try to make it back 
- That's how people lose everything

❌ **No stop loss**
- "I'll close when I'm down 50% more"
- Usually you won't. Set automatic stops

❌ **Trading on emotions**
- "I know Bitcoin will hit $100k" (gut feeling)
- Use facts, charts, analysis, not feelings

❌ **No plan**
- "I'll see what happens"
- Have entry price, target profit, stop loss BEFORE opening

❌ **Overtrading**
- Open 10 positions at once
- Can't manage them. Start with 1

## Next Steps

- **Learn about contracts**: [Understanding Contracts](./contracts-futures.md)
- **Understand risks**: [Risk & Liquidation](./risk-liquidation.md)
- **Know your fees**: [Fees & Pricing](./fees-pricing.md)

---

**Remember**: Practice with small amounts first. Losses are learning opportunities, not failures.