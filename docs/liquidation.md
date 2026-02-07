## Liquidation Examples

### Example: Bitcoin SHORT (1x)

```
Setup:
- Entry price: $50,000
- Deposit: 100 USDC
- Position value: 100 USDC (1x)
- Liquidation price: $100,000 (Price doubles)

Day 1: Price stays at $50,000
- P&L: 0 USDC ✓

Day 5: Price goes up to $75,000
- Loss: 100 × ($75,000-$50,000)/$50,000 = 50 USDC
- Remaining: 50 USDC
- Warning: Price is moving against you
- Distance: $75,000 to $100,000 = $25,000 (33% more up)

Day 10: Price goes up to $90,000
- Loss: 100 × ($90,000-$50,000)/$50,000 = 80 USDC
- Remaining: 20 USDC
- Critical: Very close to liquidation
- ⚠️ ACTION NEEDED: Close position to save remaining funds!

Day 15: Price reaches $100,000
- LIQUIDATED AUTOMATICALLY
- Entire 100 USDC deposit: LOST
- Cannot recover any remaining amount
```

## Strategies to Avoid Liquidation

### 1. Monitor Positions Constantly

**Especially with volatile assets:**

- Check position multiple times daily
- Set price alerts on contract
- Close if getting close to liquidation
- Don't sleep through a liquidation

### 2. Set Stop Losses

**Don't wait for liquidation. Close early.**

```
Trade plan BEFORE opening:
- Entry price: $50,000
- Profit target: $40,000 (close here for profit)
- Stop loss: $60,000 (close here to limit loss)
- Liquidation: $100,000 (don't wait!)

If price rises to $60,000:
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

### Short Selling Risks

When you open a SHORT position, you lose money if the price goes UP. Since asset prices can theoretically go up infinitely, you must be careful.

```
Price action timing:

If price doubles (increases 100%):
- Your 1x SHORT position loses 100% of its value.
- You are liquidated.
```

### Emotional Trading

When you're losing:
- Don't open more positions "revenge trading"
- Don't trade emotionally

**Close your position, step away, review what went wrong.**



**Q: Will Dexetera warn me before liquidation?**
A: Yes. "At Risk" warning appears when you're close. But the warning doesn't stop liquidation.

**Q: Can I deposit more money to avoid liquidation?**
A: Depends on Dexetera features. Check documentation for current capabilities.

**Q: What if price liquidates me and then recovers?**
A: Doesn't matter. Position is closed. You're out. You'd have to re-open (paying fees again).

**Q: Is liquidation automatic or manual?**
A: Automatic. Smart contract does it. You can't stop it.

**Q: Do I owe money if liquidated?**
A: No. You only lose your deposit. You never owe anything (blockchain design).


**Remember**: Liquidation usually happens on SHORT positions when price doubles. Manage your risk carefully.