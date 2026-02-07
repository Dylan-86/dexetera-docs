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

### Risk Levels

#### Long Positions (Safest)

```
Deposit: 100 USDC
Position: 100 USDC (1x)
Risk: You only lose what you put in.

Scenario:
- LONG at $50,000
- Price drops to $0
- Loss: 100 USDC maximum
- Liquidation: Effectively impossible (asset would need to go to $0)
```

#### Short Positions (Moderate Risk)

```
Deposit: 100 USDC
Position: 100 USDC (1x)
Risk: Moderate - Liquidation if price doubles.

Scenario:
- SHORT at $50,000
- Liquidation at: $100,000 (100% up)
- You lose everything if price doubles
```

## How Liquidation Works

### What is Liquidation?

**Liquidation** = Your position is automatically closed when losses get too big.

**Why?**: To prevent you from owing money to the protocol. Since you cannot lose more than you deposited, the system closes your position before your equity turns negative.

### Liquidation Price Calculation

For **SHORT** positions, you are betting against the price. If the price goes up, you lose money.

**Formula**:
```
Liquidation Price = Entry Price × 2

Example:
- Entry: $50,000
- Liquidation: $50,000 × 2 = $100,000
- (100% price increase = liquidation)
```

For **LONG** positions, since there is no leverage, liquidation is practically impossible as it would require the asset price to drop to zero (or very close to it depending on fees).

## Liquidation FAQs

**Q: Can I get liquidated with a LONG position?**
A: Practically no. You are trading with 1x leverage, which means you are fully collateralized. Unless the asset price drops to $0, you will strictly speaking not be liquidated, though your position value could drop significantly.

**Q: Can I get liquidated with a SHORT position?**
A: Yes. If the price of the asset doubles from your entry price, your loss equals your deposit, and you will be liquidated.



## Next Steps

- **Learn trading strategy**: [Trading Basics](./trading-basics.md)
- **Understand fees**: [Fees & Pricing](./fees-pricing.md)
- **Plan your trades**: [How It Works](./how-it-works.md)

---

