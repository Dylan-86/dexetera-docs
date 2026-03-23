---
id: fees-pricing
sidebar_position: 10
title: Fees & Pricing
---

# Fees & Pricing on Dexetera

This guide explains all the costs associated with trading on Dexetera.

## Fee Structure Overview

Dexetera's fee schedule is structured as follows:

- **Trading Fees**: 0.07% Taker - 0.03% Maker
- **Market Creation**: Requires a deposit of 100 USDC, which will be refunded when the contract expires.
- **Market Cancellation**: If the market is cancelled within 10 days of creation, a 5% fee (5 USDC) is applied.

## Trading Fees (Open & Close)

### Opening Position Fee

When you open a position, you pay a fee immediately.

**Calculation**:
```
Fee = Position Value × Fee Percentage
Position Value = Amount

Example:
Amount: 100 USDC
Position Value: 100 USDC
Fee Percentage: [FEE_OPEN]%
Fee Amount: 100 × [FEE_OPEN]% = [FEE_AMOUNT] USDC
```

**Impact on your trade**:
- You deposit 100 USDC
- Fee deducted: [FEE_AMOUNT] USDC
- Actual collateral working: 100 - [FEE_AMOUNT] = [NET] USDC

### Closing Position Fee

When you close (sell) your position, you pay another fee.

**Calculation**:
```
Fee = Position Value × Fee Percentage

Example:
Opened at: 100 USDC
Currently worth: 115 USDC (you made profit)
Closing value: 115 USDC
Fee: 115 × [FEE_CLOSE]% = [FEE_AMOUNT] USDC
```

**Impact on profit**:
- Your position made +15 USDC gross profit
- Closing fee: -[FEE_AMOUNT] USDC
- Net profit: 15 - [FEE_AMOUNT] = [NET_PROFIT] USDC

### Fee Examples

#### Example 1: Winning Trade

```
Setup:
- Deposit: 50 USDC
- Entry price: Bitcoin $50,000
- Exit price: Bitcoin $52,000

Fees at opening:
- Position value: 50 USDC
- Opening fee: 50 × [FEE_OPEN]% = [FEE1] USDC
- Actual collateral: 50 - [FEE1] = [COL] USDC

Trade result:
- Price moved from $50,000 to $52,000
- Profit: 50 × ($2,000/$50,000) = 2 USDC

Fees at closing:
- Closing position value: 50 + 2 = 52 USDC
- Closing fee: 52 × [FEE_CLOSE]% = [FEE2] USDC

Final result:
- Gross profit: 2 USDC
- Total fees: [FEE1] + [FEE2] = [TOTAL_FEES] USDC
- Net profit: 2 - [TOTAL_FEES] = [NET] USDC
```

#### Example 2: Losing Trade

```
Setup:
- Deposit: 100 USDC
- Entry price: Ethereum $3,000
- Exit price: Ethereum $2,900

Fees at opening:
- Position value: 100 USDC
- Opening fee: 100 × [FEE_OPEN]% = [FEE1] USDC
- Actual collateral: 100 - [FEE1] = [COL] USDC

Trade result:
- Price moved from $3,000 to $2,900
- Loss: 100 × (-$100/$3,000) = -3.33 USDC

Fees at closing:
- Closing position value: 100 - 3.33 = 96.67 USDC
- Closing fee: 96.67 × [FEE_CLOSE]% = [FEE2] USDC

Final result:
- Gross loss: -3.33 USDC
- Total fees: [FEE1] + [FEE2] = [TOTAL_FEES] USDC
- Net loss: -3.33 - [TOTAL_FEES] = [NET_LOSS] USDC
- Remaining: 100 - [NET_LOSS] = [REMAINING] USDC
```

## Roll-Over Fee

If you extend your position before contract expiration using roll-over:

**Fee calculation**:
```
Fee = Position Value × Roll-over Percentage

Example:
Position: 100 USDC
Position Value: 100 USDC
Roll-over Fee: 100 × [FEE_ROLLOVER]% = [AMOUNT] USDC
```

**When charged**: When you click "Roll Over"

**What happens**:
1. Fee deducted from your account
2. Position moved to next contract
3. New liquidation price calculated (if short)

**Example**:
```
Current position value: 50 USDC
Rolling over 60 days before expiration
Roll-over fee: 50 × [FEE_ROLLOVER]% = [AMOUNT] USDC
New position: Same 50 USDC, now on 2027 contract
```

## Contract Creation Fee

If you create a new market/contract:

**Deposit required**: 100 USDC

**Refunded**: The 100 USDC deposit will be fully refunded when the contract expires.

**Cancellation rule**: If the market is cancelled within 10 days of creation, a 5% fee (5 USDC) is applied, meaning you will receive 95 USDC back.

**Value**: Your contract earns fees from traders, so creating a market is an investment.

**Example**:
```
You create: Bitcoin/USD 2026
Creation fee: [FEE_CREATE] USDC paid upfront

First month:
- 100 traders open positions on your contract
- Total position value: 5,000 USDC
- Creator fee (from trading): 5,000 × [CREATOR_FEE]% = [EARNINGS] USDC
- Net benefit: [EARNINGS] - [FEE_CREATE] = [PROFIT] USDC
```

## Gas Fees (Blockchain Costs)

Beyond Dexetera fees, all transactions incur **gas fees** (Arbitrum network costs):

**Typical gas costs**:
- Open position: $0.50 - $2
- Close position: $0.50 - $2
- Roll over: $0.30 - $1
- Create contract: $1 - $5

**Paid in**: ETH (Ethereum, not USDC)

**Not controlled by**: Dexetera (set by Arbitrum network)

**What includes gas**:
- Blockchain transaction recording
- Smart contract execution
- Data storage on-chain

## Total Cost Examples

### Example: Complete Trade Lifecycle

```
OPEN POSITION:
- Deposit: 100 USDC
- Opening fee: [FEE_OPEN] USDC
- Gas: 1 USDC worth of ETH
- Total cost to open: 100 + [FEE_OPEN] + 1 ETH = ~101 + ETH

POSITION ACTIVE:
- Position value increases to 120 USDC (profit)

CLOSE POSITION:
- Closing fee: [FEE_CLOSE] USDC
- Gas: 1 USDC worth of ETH
- Net after close: 120 - [FEE_CLOSE] - 1 ETH = ~119 - ETH

FINAL RESULT:
- Started with: 100 USDC + 2 ETH (for gas)
- Ended with: 119 USDC (profit!)
- Net profit: 19 USDC (minus ETH gas costs)
```



## When Fees Are Deducted

### Opening Fee

**Deducted immediately** when position opens:
- From your USDC balance in wallet
- Reflected in your collateral amount
- Affects liquidation price

### Closing Fee

**Deducted at closing**:
- From your profit if you made money
- Added to your loss if you lost money
- Reduces net P&L

### Roll-over Fee

**Deducted when rolling over**:
- From your account
- Before new contract begins
- Reduces your collateral on new contract

## Strategies to Minimize Fees

### 1. Hold Longer

More holding time = Fewer trades = Fewer fees

```
Strategy A: Day trade (open/close same day)
Fees: [FEE_A] USDC per day
Yearly fees: [FEE_A] × 365 = [FEE_YEAR_A]

Strategy B: Hold 1 month (open, hold 30 days, close)
Fees: [FEE_B] USDC total
Yearly fees: [FEE_B] × 12 = [FEE_YEAR_B]

Strategy B is much cheaper!
```

### 2. Use Lower Leverage

Lower leverage = Smaller position value = Lower fees

```
100 USDC at 1x:
Fees: 100 × [FEE]% × 2 = [FEE_LOW]

100 USDC at 10x:
Fees: 1000 × [FEE]% × 2 = [FEE_HIGH]

FEE_HIGH is 10x more than FEE_LOW!
```

### 3. Bundle Positions

Consolidate multiple small trades into fewer large trades:

```
Bad: Open 10 different 10-USDC trades
Total fees: 10 × (10 × [FEE]% × 2) = High

Good: Open 1 position of 100 USDC
Total fees: 100 × [FEE]% × 2 = Lower per unit
```

### 4. Avoid Frequent Roll-overs

Each roll-over costs fees. Plan ahead:

```
Bad: Roll over multiple times per contract year
Fees: [FEE_RO] × (number of roll-overs)

Good: Hold until expiration (if winning)
Fees: [FEE_RO] × 0 (no roll-over fee)
```

## Fee Transparency

Dexetera shows you all fees **before confirming**:

```
When opening position:
✓ Opening fee (showing exact amount)
✓ Estimated liquidation price
✓ Total cost breakdown
✓ Gas estimate

When closing position:
✓ Closing fee (showing exact amount)
✓ Gross profit/loss
✓ Net profit/loss (after fees)
✓ Gas estimate
```

**Never**: Hidden fees, surprise charges, or undisclosed costs.

## Fee Allocation (Where Your Money Goes)

When you pay fees, money goes to:

| Use | Percentage |
|-----|-----------|
| Platform development | [SPEC]% |
| Infrastructure/servers | [SPEC]% |
| Contract creators | [SPEC]% (if trading their contract) |
| Risk management | [SPEC]% |

**Note**: Exact breakdown available in Dexetera documentation.

## Next Steps

- **Estimate your costs**: Use [Fee Calculator](./faq-troubleshooting.md)
- **Understand liquidation**: [Risk & Liquidation](./risk-liquidation.md)
- **Plan your trades**: [Trading Basics](./trading-basics.md)

---

**Pro tip**: Factor fees into your profit target. If you plan to make 5% profit, ensure fees are less than 2% to keep 3% net gain.