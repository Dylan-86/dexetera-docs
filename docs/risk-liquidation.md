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

Dexetera does not provide, at this time, leveraged trading.

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
This is the only option currently available on Dexetera.

**For completeness, the next sections explain how leveraged products work, but they are not available on Dexetera at this time.**

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




## Liquidation FAQs

**Q: Can I get liquidated with 1x leverage?**
A: Yes, for LONGS you can get liquidated at $0. For SHORTS you can get liquidated if the price goes up more than your initial deposit. For example, if you deposit 100 USDC and open a SHORT position at $50,000, you can get liquidated if the price goes up to $100,001.



## Next Steps

- **Learn trading strategy**: [Trading Basics](./trading-basics.md)
- **Understand fees**: [Fees & Pricing](./fees-pricing.md)
- **Plan your trades**: [How It Works](./how-it-works.md)

---

