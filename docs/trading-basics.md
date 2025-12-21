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
Leverage: 5x
Entry Price: $50,000
Current Price: $51,000
Unrealized P&L: +$100 (before fees)
```

### LONG vs SHORT Explained

#### LONG (Bullish - Betting Price Goes UP)

You think a price will **increase**.

**How it works**:
- You deposit collateral
- You control 5x more value (with 5x leverage)
- If price goes UP, you profit
- If price goes DOWN, you lose

**Example**:
```
Action: Open LONG position
Contract: Bitcoin/USD
Amount: 100 USDC at 5x leverage
Entry: $50,000

If Bitcoin goes to $55,000:
  Profit: 500 USDC × (5,000/50,000) = 50 USDC ✓

If Bitcoin goes to $45,000:
  Loss: 500 USDC × (-5,000/50,000) = -50 USDC ✗
  Your 100 USDC deposit is at risk of liquidation
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
Amount: 50 USDC at 2x leverage
Entry: $3,000

If Ethereum goes to $2,500:
  Profit: 100 USDC × (500/3,000) = 16.67 USDC ✓

If Ethereum goes to $3,500:
  Loss: 100 USDC × (-500/3,000) = -16.67 USDC ✗
```

## Leverage Explained (Simple Version)

### What Leverage Does

**Leverage multiplies your position size**, but also your profits AND losses.

### Leverage Examples

**1x Leverage (No Leverage)**
```
Deposit: 100 USDC
Position Value: 100 USDC
If price moves 10%:
  Profit/Loss: 10 USDC (10% of position)
Liquidation: Never (no leverage)
```

**5x Leverage**
```
Deposit: 100 USDC
Position Value: 500 USDC (100 × 5)
If price moves 10%:
  Profit/Loss: 50 USDC (10% of 500 USDC)
Liquidation: If price moves 20% against you
  Loss: 100 USDC (entire deposit lost)
```

**10x Leverage**
```
Deposit: 100 USDC
Position Value: 1000 USDC (100 × 10)
If price moves 10%:
  Profit/Loss: 100 USDC (10% of 1000 USDC)
Liquidation: If price moves just 10% against you
  Loss: 100 USDC (entire deposit lost)
```

### The Leverage Rule of Thumb

**Higher leverage = Higher profit potential BUT lower price movement tolerance**

- **1x**: Safe but slow profits
- **2-3x**: Balanced risk and reward
- **5x+**: Aggressive (for experienced traders)
- **10x+**: Extremely risky (can liquidate quickly)

**For beginners: Start with 1x or 2x leverage.**

## Opening a Position: Step by Step

### Step 1: Choose a Contract

1. Open Dexetera website
2. Browse available contracts
3. Click on one to view details
4. Read contract information:
   - Current price
   - Volume (how much is trading)
   - Expiration date
   - Available leverage

### Step 2: Decide Direction and Size

**Ask yourself**:
- Do I think the price will go UP (LONG) or DOWN (SHORT)?
- How much USDC can I afford to lose?
- What leverage level am I comfortable with?

**Example Decision**:
```
"Bitcoin is trending up. I'll go LONG."
"I can afford to lose 50 USDC."
"I'll use 3x leverage for moderate risk."
```

### Step 3: Enter Details

In the trading form, enter:

| Field | Example |
|-------|---------|
| Direction | LONG |
| Amount (USDC) | 50 |
| Leverage | 3x |
| Estimated Fee | 0.15 USDC |

### Step 4: Review Order

Before confirming, Dexetera shows you:

- **Entry Price**: Price you're entering at
- **Position Value**: Amount × Leverage
- **Liquidation Price**: Price where you get liquidated
- **Max Profit (optional)**: How much you could make
- **Total Cost**: Your deposit + fees
- **Fee**: How much you pay

**Example Review**:
```
Entry Price: $50,000
Position Value: 150 USDC (50 × 3x)
Liquidation Price: $48,333
Maximum Profit (if target hit): $100 USDC
Fee: 0.15 USDC
Total Investment: 50 USDC
```

### Step 5: Approve Transaction

1. Click "Open Position" or "Confirm"
2. Your wallet shows a transaction approval
3. Click "Confirm" in wallet
4. Wait for blockchain confirmation (10-30 seconds on Arbitrum)

**Position is now OPEN and actively monitoring the price.**

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

**Example Close**:
```
Opened LONG at $50,000 with 50 USDC
Close at $51,000
Gross Profit: $50 × (1,000/50,000) = 1 USDC
Less Fees: 0.25 USDC
Net Profit: 0.75 USDC
Wallet receives: 50.75 USDC
```

### Watching for Liquidation

Your position shows **liquidation price** (the price that triggers automatic closure).

**Warning signs**:
- Liquidation price is very close to current price
- Your P&L is deeply negative (red)
- System shows "At Risk" warning

**What to do**:
- Close position immediately to preserve remaining funds
- Don't wait for liquidation
- Or deposit more USDC to raise liquidation price (if available)

## Position Examples

### Example 1: Bitcoin LONG Trade

```
Setup:
- Contract: Bitcoin/USD 2026
- Direction: LONG (betting up)
- Entry Price: $50,000
- Amount: 100 USDC
- Leverage: 5x

Position Value: 100 × 5 = 500 USDC

Scenario A - Price goes UP to $52,000:
  Price move: +$2,000
  Your profit: 500 × ($2,000/$50,000) = 20 USDC
  Less fees (0.3): 19.7 USDC profit ✓

Scenario B - Price goes DOWN to $48,000:
  Price move: -$2,000
  Your loss: 500 × (-$2,000/$50,000) = -20 USDC
  Plus fees: -20.3 USDC total
  Remaining: 79.7 USDC

Scenario C - Price goes DOWN to $45,000:
  Price move: -$5,000
  Your loss: 500 × (-$5,000/$50,000) = -50 USDC
  Liquidation price: ~$45,000
  Position LIQUIDATED
  Total loss: 100 USDC (entire deposit)
```

### Example 2: Ethereum SHORT Trade

```
Setup:
- Contract: Ethereum/USD 2026
- Direction: SHORT (betting down)
- Entry Price: $3,000
- Amount: 50 USDC
- Leverage: 2x

Position Value: 50 × 2 = 100 USDC

Scenario A - Price goes DOWN to $2,750:
  Price move: -$250
  Your profit: 100 × ($250/$3,000) = 8.33 USDC
  Less fees: 8 USDC profit ✓

Scenario B - Price goes UP to $3,200:
  Price move: +$200
  Your loss: 100 × (-$200/$3,000) = -6.67 USDC
  Plus fees: -7 USDC total

Scenario C - Price goes UP to $3,500:
  Price move: +$500
  Your loss: 100 × (-$500/$3,000) = -16.67 USDC
  Liquidation triggered
  Total loss: 50 USDC (entire deposit)
```

## Basic Trading Rules

### Risk Management

1. **Only trade with money you can lose**
   - Never use rent or essential money
   - Assume every trade can go to zero

2. **Start small**
   - First trade: 10-20 USDC
   - Small losses help you learn without pain

3. **Use low leverage initially**
   - Begin with 1x or 2x
   - Increase only after profiting consistently

4. **Set stop losses**
   - Decide ahead: "If price reaches X, I close"
   - Stick to your plan, don't get emotional

5. **Don't revenge trade**
   - Lost 50 USDC? Don't immediately open a 100 USDC trade
   - Take a break, reassess, plan carefully

### Trading Discipline

- **Have a plan before opening**: Know your target and stop
- **Set time limits**: Don't day-trade 24/7
- **Track your trades**: Record every trade to learn
- **Review losses**: Why did they happen? How to avoid next time?
- **Celebrate wins**: But don't get overconfident

## Common Beginner Mistakes

❌ **Too much leverage**
- 10x leverage blows up accounts fast
- Start with 1-3x

❌ **Revenge trading**
- Lost $100? Don't try to make it back with 10x leverage
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
- Can't manage them. Start with 1-2 max

## Next Steps

- **Learn about contracts**: [Understanding Contracts](./contracts-futures.md)
- **Understand risks**: [Risk & Liquidation](./risk-liquidation.md)
- **Know your fees**: [Fees & Pricing](./fees-pricing.md)

---

**Remember**: Practice with small amounts first. Losses are learning opportunities, not failures.