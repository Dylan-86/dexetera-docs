---
id: create-contract
sidebar_position: 9
title: Creating Your Own Contract
---

# Creating Your Own Contract on Dexetera

One of Dexetera's most unique features is that **anyone can create a new futures contract** on any measurable metric. This guide shows you how.

## Why Create a Contract?

### Benefits

1. **Monetization**: Earn fees from every trade on your contract
2. **Market Making**: Be the first in a new market
3. **Community Building**: Create markets your trading friends want
4. **Innovation**: Trade metrics nobody else offers
5. **Reputation**: Become known as a market creator

### Fee Structure

When someone trades your contract, you receive a percentage:

- **Per trade fee**: [SPECIFY_PERCENTAGE]% of trade volume
- **Monthly earnings potential**: Depends on contract popularity

**Example**:
```
You create: "Tesla Stock Price 2026"
100 traders put 50 USDC each = 5,000 USDC traded
You earn: 5,000 × [FEE]% = [AMOUNT] USDC
```

## What Makes a Good Contract?

### Clear, Measurable Metric

Bad contract names:
- ❌ "Tech will moon" (not measurable)
- ❌ "Bitcoin weird things" (too vague)
- ❌ "Weather stuff" (too unclear)

Good contract names:
- ✓ "Bitcoin/USD Price End of 2026"
- ✓ "Global Average Temperature Change 2026"
- ✓ "S&P 500 Index Level Dec 31, 2026"
- ✓ "Tesla Stock Price 2026"

### Reliable Oracle

Your contract needs a **data source** (oracle) that can:
- Measure the metric
- Be tamper-proof
- Be publicly verifiable
- Exist for 1 year

**Good oracle sources**:
- CoinGecko API (for crypto prices)
- OpenWeather (for weather data)
- Financial data APIs (for stock/index data)
- Government agencies (for economic data)
- Sports APIs (for sports statistics)

**Bad oracle sources**:
- Social media posts (easily faked)
- Personal websites (can disappear)
- Unverified data sources

### Moderate Interest

Contracts work best when:
- Multiple people are interested
- Opinions differ (some LONG, some SHORT)
- Regular volume exists

**Ideal contracts**:
- Bitcoin/Ethereum price (always popular)
- Stock prices (broad appeal)
- Major events with opposing views
- Niche metrics with dedicated communities

**Poor contracts**:
- Extremely niche (only 2 people interested)
- Already saturated (100 similar contracts exist)
- Measuring something that won't happen

## Step-by-Step: Creating a Contract

### Step 1: Prepare Your Concept

Before creating, write down:

```
Contract Name: ________________________
Metric Description: ______________________
Oracle/Data Source: _______________________
Measurement Frequency: ___________________
Settlement Rules: ________________________
Expected Interest: ________________________
Competing Contracts: _____________________
```

**Example Filled Out**:
```
Contract Name: Bitcoin/USD Q4 2026
Metric: Bitcoin price in US Dollars
Oracle: CoinGecko API, official closing
Frequency: Updated every minute
Settlement: Q4 final Bitcoin price
Rules: Settlement at 11:59 PM UTC Dec 31, 2026
Interest: Very high (Bitcoin traders)
Competitors: 5 similar Bitcoin contracts
```

### Step 2: Open Dexetera Create Page

1. Go to Dexetera website
2. Click "Create Contract" or "New Market"
3. You'll see the contract creation form

### Step 3: Fill in Contract Details

#### Contract Name

**Format**: "[METRIC] [YEAR/TIMEFRAME]"

Good examples:
- Bitcoin/USD 2026
- Gold/USD Futures 2026
- Tesla Stock 2026
- Weather Temperature USA 2026

**Rules**:
- Keep it short (under 50 characters)
- Make it clear what you're measuring
- Include timeframe

#### Description

Detailed explanation:
- What are we measuring?
- How will it be measured?
- When does it settle?
- Any special rules?

**Example description**:
```
Bitcoin price measured in US Dollars, 
settled at CoinGecko closing price on 
January 1, 2027 at 00:00 UTC.
```

#### Oracle Selection

Choose your data source:

```
Popular Oracles:
- CoinGecko: Crypto prices
- Chainlink: Various metrics
- OpenWeather: Weather data
- FRED API: Economic data
- Yahoo Finance: Stock data
- Custom API: Any public API
```

1. Select oracle type
2. Provide oracle address/API endpoint
3. Dexetera verifies it's accessible
4. System tests oracle data feed

**Important**: Oracle must be working and accessible for the entire contract duration.

#### Initial Price / Starting Point

What's the current measurement?

```
Example: Bitcoin/USD 2026
Initial Price: $50,000 (today's Bitcoin price)

Example: Weather Contract
Starting: 15°C (current average)
```

This helps traders understand where you're starting from.

#### Leverage Options

Decide maximum leverage allowed on your contract:

Options:
- 1x only (safest)
- 1-5x (moderate)
- 1-10x (aggressive)
- [CUSTOM]

**Note**: Higher leverage means:
- More attractive to risk-takers
- More liquidations
- More volatile price movements
- More trading activity (more fees for you)

### Step 4: Set Expiration & Timeline

**Standard on Dexetera**: 1 year

But you specify exact dates:
- **Creation**: January 1, 2026
- **Expiration**: January 1, 2027
- **Roll over available**: November 1, 2026 (60 days before)
- **Settlement oracle check**: December 31, 2026 at midnight UTC

### Step 5: Review & Confirm

Before submitting:

**Checklist**:
- [ ] Contract name is clear
- [ ] Description explains metric fully
- [ ] Oracle is reliable and accessible
- [ ] Initial price is accurate
- [ ] Expiration date is reasonable
- [ ] Settlement rules are unambiguous
- [ ] Leverage limits are set
- [ ] No conflicting contracts exist

**Then**:
1. Review all details
2. Pay creation fee: [CREATION_FEE] USDC
3. Click "Create Contract"
4. Confirm transaction in wallet
5. Wait for blockchain confirmation

**Your contract is now LIVE.**

### Step 6: Promote Your Contract (Optional)

Once live, you can drive interest:

- **Twitter**: Share in crypto community
- **Discord**: Post in trading servers
- **Telegram**: Alert friends interested in metric
- **Reddit**: Comment in relevant communities
- **Forums**: Crypto discussion boards

**Example post**:
```
🚀 New market on Dexetera: Bitcoin/USD 2026
📊 Trade Bitcoin price for next year
🎯 Available leverage: 1-10x
💰 [Expected APY from fees]
Join now: [link]
```

## Creating a Successful Contract

### Metrics with Natural Interest

**Sports**: Winner predictions, score totals, player statistics
**Finance**: Stock prices, commodity prices, market indices
**Crypto**: Price levels, dominance, volatility
**Real-World**: Weather, elections, economic indicators

### Driving Trade Volume

More traders = More fees for you

Ways to attract traders:
1. **Clear outcome**: People know how to win/lose
2. **Balanced opinions**: Some believe UP, some DOWN
3. **Timeframe appeal**: Long enough to accumulate position, short enough to be relevant
4. **Community**: Engage with traders, answer questions
5. **Marketing**: Promote on social media

### Managing Your Contract

Once created, you should:

- **Monitor activity**: Check daily volume
- **Answer questions**: Traders may ask about oracle
- **Respond to disputes**: If oracle data disputed, help clarify
- **Engage community**: Build reputation as fair creator

## Common Contract Creation Mistakes

❌ **Vague metric**
- "Bitcoin weird things happen 2026"
- Should be: "Bitcoin/USD settlement price Dec 31, 2026"

❌ **Unreliable oracle**
- "I'll manually decide the price"
- Should be: "CoinGecko official API data"

❌ **Timeframe too short**
- 1-week contracts (too hectic)
- Use 1-year standard or clear rationale for shorter

❌ **Competing with established contracts**
- Creating 100th Bitcoin contract
- Better: Find niche not covered

❌ **No promotion**
- Create and hope people find it
- Should: Share actively on social media

❌ **Unclear settlement rules**
- "Settles when it settles"
- Should: "Settles at 11:59 PM UTC Jan 1, 2027 at CoinGecko price"

## Legal & Responsibility Notes

### Creator Responsibilities

When you create a contract, you're responsible for:

1. **Metric accuracy**: Ensure it can be measured
2. **Oracle reliability**: Verify oracle works and is trustworthy
3. **Clear rules**: Settlement must be unambiguous
4. **Integrity**: Don't create contracts with hidden advantages
5. **Dispute resolution**: If oracle disputed, help clarify

### Dexetera's Role

Dexetera:
- Hosts your contract
- Provides trading infrastructure
- Enforces settlement rules
- Handles payment distribution

Dexetera **cannot**:
- Recover funds sent to wrong addresses
- Reverse completed trades
- Modify settlement after creation
- Force oracle to pay if they disappear

### Your Liability

By creating a contract, you acknowledge:
- Metric might become unmeasurable
- Oracle might fail during contract life
- Disputes might occur (you help resolve)
- No insurance on trader funds

## Examples of Successful Contracts

### Example 1: Bitcoin/USD 2026

```
Metric: Bitcoin price in USD
Oracle: CoinGecko API
Expected traders: Thousands
Trading volume: Very high
Your fees: [HIGH]
Reason: Bitcoin always popular, clear measurement
```

### Example 2: Custom: "Tesla Stock Price 2026"

```
Metric: Tesla stock price end of 2026
Oracle: Yahoo Finance API
Expected traders: Hundreds
Trading volume: High
Your fees: [MEDIUM]
Reason: Stock traders interested, clear oracle
```

### Example 3: Niche: "Ethereum Gas Fees Average 2026"

```
Metric: Average Ethereum gas price in 2026
Oracle: Ethereum network data + API
Expected traders: Tens
Trading volume: Medium
Your fees: [LOW]
Reason: Niche but dedicated audience exists
```

## Next Steps

- **Learn about trading**: [Trading Basics](./trading-basics.md)
- **Understand settlement**: [Contracts & Futures](./contracts-futures.md)
- **Check fees structure**: [Fees & Pricing](./fees-pricing.md)

---

**Pro tip**: Create contracts you'd want to trade yourself. Passion shows, and communities follow passion.