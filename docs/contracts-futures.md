---
id: contracts-futures
sidebar_position: 8
title: Understanding Contracts & Futures
---

# Understanding Contracts & Futures

This guide explains what futures contracts are and how they work on Dexetera.

## What is a Futures Contract?

A **futures contract** is an agreement to trade something at a predetermined price on a future date.

### Real-World Example

Imagine a wheat farmer:
- Plants wheat today (cost: $50 per ton)
- Won't harvest until September
- Worried price will drop

The farmer can make a **futures contract** with a buyer:
- "I promise to sell you 100 tons of wheat in September at $60 per ton"
- Both sides lock in the price NOW
- At harvest time, they settle at $60

**Benefits**:
- Farmer: Protected from price drops
- Buyer: Protected from price spikes

### Dexetera Futures (Digital Version)

On Dexetera, instead of wheat, you trade anything measurable:

**Examples**:
- Bitcoin price
- Stock indices
- Sports statistics
- Weather data
- Crypto volatility
- Custom metrics

## Dexetera Contract Specifications

### 1-Year Expiration

Every Dexetera futures contract has a **1-year lifespan**:

- **Creation**: Contract is created on a specific date
- **Life**: Traders can open/close positions for 1 year
- **Maturity (Day 365)**: Contract expires
- **Settlement**: Automatically settles at final price

**Example Timeline**:
```
Jan 1, 2026 → Contract created
Day 1-200   → Actively traded, people can open/close
Day 300     → "Near expiration warning" appears
Day 350     → "Roll over available" - can move to next contract
Day 365     → Contract expires, auto-settles, done
```

### Expiration Price

When a contract expires, **who decides the final price?**

Answer: **The Official Data Source** 

An **Official Data Source** is a trusted source of information:
- Bitcoin Official Data Source → CoinGecko, Chainlink, or similar
- Weather Official Data Source → Weather APIs
- Stock Official Data Source → Financial data providers

**Important**:
- Official Data Source price is what determines settlement
- Must be fair and tamper-proof

### Roll Over Feature

You can **extend your position** before expiration using **roll over**.

**How roll over works**:

```
Current Contract: Bitcoin/USD 2026 (expires Jan 1, 2027)

Day 350 (11 days before expiration):
  Roll over becomes available

Option A: Close position
  - Realize all profit/loss
  - Exit the market

Option B: Roll over
  - Move to next contract: Bitcoin/USD 2027
  - Keep same position size
  - Pay roll over fee
  - Liquidation price recalculated
  - Position continues another year

Why roll over?
- You still believe in your trade
- Want to extend position longer
- Avoid taking profit just at expiration
```

### Settlement Process

**At expiration (Day 365)**:

1. **Official Data Source fetches final price** (e.g., Bitcoin = $151,500)
2. **All positions settle automatically**
3. **Profit/loss calculated** based on final price
4. **Funds distributed** to user wallets in USDC

**Example Settlement**:
```
Position: LONG Bitcoin
Entry Price: $50,000
Amount: 100 USDC
Leverage: 5x
Final Price at Expiration: $51,500

Calculation:
Position Value: 500 USDC (100 × 5)
Price change: $51,500 - $50,000 = $1,500
Profit: 500 × ($1,500/$50,000) = 15 USDC
Less fees: 15 - 0.3 = 14.7 USDC profit
Wallet receives: 100 + 14.7 = 114.7 USDC ✓
```

## Types of Contracts on Dexetera

### Asset-Based Contracts

**Crypto Contracts**:
- Bitcoin/USD Futures 2026
- Ethereum/USD Futures 2026
- Solana/USD Futures 2026

**Traditional Assets**:
- Gold/USD
- Stock indices (S&P 500, DAX)
- Commodities (oil, natural gas)

### User-Created Contracts

**Dexetera's unique feature**: Anyone can create a contract on any measurable metric.

**Examples users might create**:
- "Tesla Stock Price"
- "Global Temperature Change"
- "Bitcoin Dominance %"
- "Crypto Market Cap"
- "CO2 in the atmosphere"
- "Number of Bitcoin Nodes"

**Creator responsibilities**:
- Define the metric clearly
- Choose the Official Data Source 
- Ensure Official Data Source is accessible and can be automatically read

## Creating vs Trading Contracts

### Trading an Existing Contract (Easier)

You take a position on an already-created contract:

```
Steps:
1. Find contract in list
2. Click to view details
3. Choose LONG or SHORT
4. Enter amount and leverage
5. Confirm
6. Done - position is open
```

**Advantages**:
- Metric is already defined
- Official Data Source is already confirmed
- Just trade, don't worry about logistics

### Creating a New Contract (Advanced)

You invent a new market for something nobody else created:

```
Steps:
1. Click "Create Contract"
2. Define metric (description must be clear)
3. Select Official Data Source (where data comes from)
4. Set initial conditions
5. Pay creation fee
6. Contract goes live
7. Other traders can now trade your contract
```

**Your responsibilities as creator**:
- Metric must be measurable and verifiable
- Clear rules about how settlement works

**Incentives**:
- Small fee from every trade on your contract
- Reputation as market maker
- First-mover advantage

## Long vs Short on Futures

### LONG Position (Bullish)

**You believe price will go UP**

```
Entry: Bitcoin = $50,000
LONG with 100 USDC at 5x

Settlement prices:
  $55,000 → You profit 50 USDC ✓
  $50,000 → You break even (minus fees)
  $45,000 → You lose 50 USDC ✗
  
At expiration, if price > entry price: You win
```

### SHORT Position (Bearish)

**You believe price will go DOWN**

```
Entry: Bitcoin = $50,000
SHORT with 100 USDC at 5x

Settlement prices:
  $45,000 → You profit 50 USDC ✓
  $50,000 → You break even (minus fees)
  $55,000 → You lose 50 USDC ✗
  
At expiration, if price < entry price: You win
```

## Leverage on Futures (coming soon)

Futures use leverage just like spot trading.

### Leverage Example

```
BASE: 100 USDC, Bitcoin at $50,000

1x Leverage:
  Control: 100 USDC
  10% move = 10 USDC profit/loss
  Liquidation: Impossible (no leverage)

5x Leverage:
  Control: 500 USDC
  10% move = 50 USDC profit/loss
  Liquidation: 20% move against you

10x Leverage:
  Control: 1000 USDC
  10% move = 100 USDC profit/loss
  Liquidation: 10% move against you
```

### Leverage Warning

**Higher leverage = Faster liquidation**

Many new traders use too much leverage and lose immediately.

**Rule for futures**: Start with 1-2x leverage maximum.

## Rolling Over to Extend

Before your contract expires, you can **roll over** to extend.

### Roll Over Process

**Step 1: Check availability**
- Usually available 30-60 days before expiration
- See "Roll over available" button on position

**Step 2: Decide**
- Stay in current contract until expiration? Or extend?
- If extending, you'll move to next contract (1-year cycle)

**Step 3: Execute**
1. Click "Roll Over"
2. Select target contract (usually "Bitcoin/USD 2027")
3. Review new liquidation price
4. Pay roll-over fee
5. Confirm transaction

**Step 4: New contract begins**
- Your position now on new contract
- Entry price resets
- Liquidation price recalculated
- Another 1-year timer starts

### Fee for Rolling Over

Roll-over fees are [SPECIFY_PERCENTAGE]%:

```
Example:
Position: 100 USDC at 5x = 500 USDC notional
Roll-over fee: 500 × [FEE]% = [AMOUNT] USDC
Deducted from your balance
```

## Contract Settlement Examples

### Example 1: Simple LONG

```
Contract: Bitcoin/USD 2026 (expires Jan 1, 2027)
Position: LONG
Deposit: 50 USDC
Leverage: 3x
Entry Price: $50,000
Position Value: 150 USDC

Nov 1, 2026 (2 months before expiration):
  Current Price: $55,000
  Unrealized Profit: 15 USDC

No roll over. Wait until expiration.

Jan 1, 2027 (Expiration):
  Official Data Source settles at: $52,000
  Final Profit: 150 × ($2,000/$50,000) = 6 USDC
  Receive: 50 + 6 - fees = ~55.7 USDC
```

### Example 2: Roll Over

```
Contract: Ethereum/USD 2026 (expires Jan 1, 2027)
Position: SHORT
Deposit: 100 USDC
Leverage: 2x
Entry Price: $3,000
Position Value: 200 USDC

Nov 15, 2026:
  Current Price: $2,800
  Unrealized Profit: 13.33 USDC
  Roll over available ✓

You believe Ethereum will stay low. Roll over!

Roll over to: Ethereum/USD 2027
Fee: 2 USDC
Position continues with same 100 USDC deposit
New 1-year timer starts
Can roll over again in 11 months
```

## Key Differences: Futures vs Spot

| Feature | Futures (Dexetera) | Spot Trading |
|---------|-------------------|------------|
| **Expiration** | 1 year (settles) | Never (hold forever) |
| **Leverage** | Available | Not available |
| **Settlement** | Automatic at expiration | Manual when you sell |
| **Extension** | Roll over to next contract | Not needed |
| **Price source** | Official Data Sources | Real-time market |

## Next Steps

- **Learn risk management**: [Risk & Liquidation](./risk-liquidation.md)
- **Create a contract**: [Creating Contracts](./create-contract.md)
- **Understand fees**: [Fees & Pricing](./fees-pricing.md)

---

**Remember**: Futures contracts expire. Plan ahead for roll-over or closure before expiration day.