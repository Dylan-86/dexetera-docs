---
id: risk-liquidation
sidebar_position: 11
title: Risk & Liquidation
---

# Risk Management & Liquidation

This guide explains the risks of leverage trading and how liquidation works on Dexetera.

## Understanding Risk on Dexetera

### Your Money is at Risk

Dexetera is leverage trading. You can lose your entire deposit quickly.

**Never trade with money you need for:**
- Rent or mortgage
- Food or essential expenses
- Emergency funds
- Money you promised to others

**Only trade with:**
- Money you can afford to lose
- "Play money" or speculative funds
- Profits from previous trades
- Money you'd be comfortable losing 100% of

### Risk Levels by Leverage

#### 1x Leverage (Safest)

```
Deposit: 100 USDC
Position: 100 USDC
Risk: You only lose what you put in (in theory)

Scenario:
- LONG at $50,000
- Price drops to $0
- Loss: 100 USDC maximum
- Liquidation: Impossible (no leverage)
```

#### 2-3x Leverage (Moderate Risk)

```
Deposit: 100 USDC
Position: 200-300 USDC
Risk: Moderate - 10-20% move liquidates you

Scenario (2x):
- LONG at $50,000
- Liquidation at: $40,000 (20% down)
- You lose everything if price drops 20%

Scenario (3x):
- LONG at $50,000
- Liquidation at: $37,500 (25% down)
- You lose everything if price drops 25%
```

#### 5x+ Leverage (High Risk)

```
Deposit: 100 USDC
Position: 500+ USDC
Risk: High - 5-10% move liquidates you

Scenario (5x):
- LONG at $50,000
- Liquidation at: $40,000 (20% down)
- You lose everything if price drops 20%

Scenario (10x):
- LONG at $50,000
- Liquidation at: $45,000 (10% down)
- You lose everything if price drops only 10%

Scenario (20x):
- LONG at $50,000
- Liquidation at: $47,500 (5% down)
- You lose everything if price drops just 5%
```

### The Leverage Trap

**New traders often think**:
"5x leverage = 5x profits, I'll be rich!"

**Reality**:
- 5x leverage = 5x EVERYTHING
- 5x profits YES, but
- 5x losses YES
- And liquidation is just 20% away

## How Liquidation Works

### What is Liquidation?

**Liquidation** = Your position is automatically closed when losses get too big.

**Why?**: To prevent you from owing money to the protocol.

### Liquidation Price Calculation

**Formula**:
```
Liquidation Price = Entry Price × (1 - 1/Leverage)

Examples:

1x Leverage:
- Entry: $50,000
- Liquidation: $50,000 × (1 - 1/1) = $50,000 × 0 = $0
- (Never liquidates, you only lose what you put in)

2x Leverage:
- Entry: $50,000
- Liquidation: $50,000 × (1 - 1/2) = $50,000 × 0.5 = $25,000
- (50% drop = liquidation)

3x Leverage:
- Entry: $50,000
- Liquidation: $50,000 × (1 - 1/3) = $50,000 × 0.667 = $33,350
- (33% drop = liquidation)

5x Leverage:
- Entry: $50,000
- Liquidation: $50,000 × (1 - 1/5) = $50,000 × 0.8 = $40,000
- (20% drop = liquidation)

10x Leverage:
- Entry: $50,000
- Liquidation: $50,000 × (1 - 1/10) = $50,000 × 0.9 = $45,000
- (10% drop = liquidation)
```

### SHORT Position Liquidation

For SHORT positions, liquidation works in reverse:

```
SHORT at $50,000 with 5x leverage:
Liquidation Price: $50,000 × (1 + 1/5) = $50,000 × 1.2 = $60,000

If price goes UP to $60,000, you're liquidated
(20% move up = liquidation)
```

## Real-Time Monitoring

### Liquidation Indicators

Dexetera shows you in real-time:

- **Liquidation Price**: The exact price where you get liquidated
- **Distance to Liquidation**: How far price must move to liquidate you
- **"At Risk" Warning**: If liquidation price is very close

### Example Dashboard

```
Position: LONG Bitcoin at $50,000
Amount: 100 USDC
Leverage: 5x

Current Price: $48,000
Liquidation Price: $40,000
Distance to Liquidation: $8,000 (16% down)

Your Position Value:
- Entry value: 500 USDC (100 × 5x)
- Current value: 480 USDC (down 20 USDC)
- Unrealized P&L: -20 USDC
- Return: -4%

⚠️ WARNING: Close to liquidation price!
```

## Liquidation Examples

### Example 1: 5x Leverage - Bitcoin LONG

```
Setup:
- Entry price: $50,000
- Deposit: 100 USDC
- Leverage: 5x
- Position value: 500 USDC
- Liquidation price: $40,000

Day 1: Price stays at $50,000
- P&L: 0 USDC ✓

Day 5: Price drops to $45,000
- Loss: 500 × ($50,000-$45,000)/$50,000 = 50 USDC
- Remaining: 50 USDC
- Warning: Price is closer to liquidation
- Distance: $45,000 to $40,000 = $5,000 (11% more down)

Day 10: Price drops to $40,500
- Loss: 500 × ($50,000-$40,500)/$50,000 = 47.5 USDC
- Remaining: 52.5 USDC
- Critical: Very close to liquidation
- ⚠️ ACTION NEEDED: Close position to save remaining funds!

Day 15: Price drops to $39,999
- LIQUIDATED AUTOMATICALLY
- Entire 100 USDC deposit: LOST
- Cannot recover any remaining amount
```

### Example 2: 2x Leverage - Ethereum SHORT

```
Setup:
- Entry price: $3,000
- Deposit: 50 USDC
- Leverage: 2x
- Position value: 100 USDC
- Liquidation price: $6,000 (double!)

Day 1: Price stays at $3,000
- P&L: 0 USDC ✓

Day 3: Price goes to $4,000
- Loss: 100 × ($4,000-$3,000)/$3,000 = 33 USDC
- Remaining: 17 USDC
- Distance to liquidation: $6,000 - $4,000 = $2,000 (50% more up)

Day 5: Price goes to $5,500
- Loss: 100 × ($5,500-$3,000)/$3,000 = 83 USDC
- Remaining: ~0 USDC (almost wiped out)
- Critical: Liquidation very close!
- ⚠️ CLOSE NOW or get liquidated!

Day 7: Price reaches $6,000
- LIQUIDATED AUTOMATICALLY
- All remaining USDC: LOST
```

## Strategies to Avoid Liquidation

### 1. Use Low Leverage

**Highest protection: 1x leverage**
- You never liquidate
- You can only lose what you deposit
- Slower profits but safer

**Safe range: 1-3x leverage**
- Reasonable profit potential
- Manageable liquidation distance
- Recommended for most traders

**Risky: 5x+ leverage**
- Should only use if you're experienced
- Must monitor positions constantly
- Can liquidate very quickly

### 2. Set Stop Losses

**Don't wait for liquidation. Close early.**

```
Trade plan BEFORE opening:
- Entry price: $50,000
- Profit target: $52,000 (close here for profit)
- Stop loss: $48,000 (close here to limit loss)
- Liquidation: $40,000 (don't wait!)

If price drops below $48,000:
- Close position immediately
- Save remaining capital
- Avoid bigger losses
```

### 3. Position Sizing

**Only risk a small percentage per trade**

```
Bad: All-in trading
- Have 1000 USDC
- Put entire 1000 USDC in one trade
- Get liquidated, lose everything

Good: Risk management
- Have 1000 USDC
- Use 50-100 USDC per trade
- Can afford 5-10 losing trades
- Still have capital to recover
```

### 4. Monitor Positions Constantly

**Especially with leverage:**

- Check position multiple times daily
- Set price alerts on contract
- Close if getting close to liquidation
- Don't sleep through a liquidation

### 5. Use Low Leverage for Volatile Markets

```
Bitcoin (Volatile): Use 1-2x max
Stable assets: Can use 3-5x

The more volatile the asset, the lower leverage.
```

## What Happens When You're Liquidated

### Liquidation Process

1. **Price reaches liquidation level**
2. **Smart contract detects this**
3. **Your position is closed automatically** (you can't stop it)
4. **Your entire deposit is lost** (or remaining balance, whichever is less)
5. **Position disappears from your account**
6. **Funds are gone** (cannot recover)

### What You Keep

After liquidation:
- ✓ Your remaining wallet balance (if any leftover)
- ✓ Your other open positions (unaffected)

What you lose:
- ✗ Liquidated position deposit (100%)
- ✗ All potential future profits from that position

## Important: Cannot Be Recovered

**Liquidation is permanent**. Dexetera:
- ✗ Cannot reverse liquidation
- ✗ Cannot refund liquidated amount
- ✗ Cannot appeal or dispute (smart contract is final)

**Only prevention**: Close position before liquidation happens.

## Risk Warnings

### Leverage is Dangerous

```
Statistics (not actual Dexetera data, but typical):
- 1x leverage traders: ~90% don't lose money long-term
- 2x leverage traders: ~70% lose money
- 5x leverage traders: ~95% lose all money eventually
- 10x+ leverage traders: ~99% lose all money
```

### Losses Are Fast

```
Price action timing:

Without leverage (1x):
- Price drops 20% over 1 week
- You lose 20% slowly
- Time to react: Several days

With 5x leverage:
- Price drops 20% in 1 hour
- You're liquidated (20% = full loss)
- Time to react: Minutes

This is why leverage is dangerous.
```

### Emotional Trading

When you're losing:
- Don't increase leverage hoping to "recover"
- Don't open more positions
- Don't trade emotionally

**Close your position, step away, review what went wrong.**

## Liquidation FAQs

**Q: Can I get liquidated with 1x leverage?**
A: No. 1x leverage means you only lose what you deposit. No liquidation possible.

**Q: Will Dexetera warn me before liquidation?**
A: Yes. "At Risk" warning appears when you're close. But the warning doesn't stop liquidation.

**Q: Can I deposit more money to avoid liquidation?**
A: Depends on Dexetera features. Some protocols allow this, others don't. Check documentation.

**Q: What if price liquidates me and then recovers?**
A: Doesn't matter. Position is closed. You're out. You'd have to re-open (paying fees again).

**Q: Is liquidation automatic or manual?**
A: Automatic. Smart contract does it. You can't stop it.

**Q: Do I owe money if liquidated?**
A: No. You only lose your deposit. You never owe anything (blockchain design).

## Next Steps

- **Learn trading strategy**: [Trading Basics](./trading-basics.md)
- **Understand fees**: [Fees & Pricing](./fees-pricing.md)
- **Plan your trades**: [How It Works](./how-it-works.md)

---

**Remember**: Low leverage = Long-term survival. High leverage = Fast liquidation. Start safe, build skills, then increase leverage gradually if profitable.