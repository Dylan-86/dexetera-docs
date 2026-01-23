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


**Remember**: Low leverage = Long-term survival. High leverage = Fast liquidation. Start safe, build skills, then increase leverage gradually if profitable.