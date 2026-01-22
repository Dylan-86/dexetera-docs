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
- ✓ "Bitcoin/USD Price"
- ✓ "Global Average Temperature Change"
- ✓ "S&P 500 Index Level"
- ✓ "Tesla Stock Price"

### Reliable Data Source

Your contract needs a **data source** (official source for the price) that can:
- Measure the metric
- Be tamper-proof
- Be publicly verifiable
- Exist for 1 year

**Good data sources**:
- CoinGecko API (for crypto prices)
- OpenWeather (for weather data)
- Financial data APIs (for stock/index data)
- Government agencies (for economic data)
- Sports APIs (for sports statistics)

**Bad data sources**:
- Social media posts (easily faked)
- Personal websites (can disappear)
- Unverified data sources


1. Select data source type
2. Provide data source address/API endpoint
3. Dexetera verifies it's accessible
4. System tests data source feed

**Important**: Data source must be working and accessible for the entire contract duration.


### Good Contract Requirements 

1. **Metric accuracy**: Ensure it can be measured
2. **Data source reliability**: Verify data source works and is trustworthy
3. **Clear rules**: Settlement must be unambiguous
4. **Integrity**: Don't create contracts with hidden advantages
5. **Dispute resolution**: If data source disputed, help clarify



### Moderate Interest

Contracts work best when:
- Multiple people are interested
- Opinions differ (some LONG, some SHORT)
- Regular volume exists

**Ideal contracts**:
- Bitcoin/Ethereum price (always popular)
- Stock prices (broad appeal)
- Major metrics with opposing views
- Niche metrics with dedicated communities

**Poor contracts**:
- Extremely niche (only 2 people interested)
- Already saturated (100 similar contracts exist)
- Measuring something that won't happen

## Step-by-Step: Creating a Contract

### Step 1: Decide which metric you want to measure

Once you have decided on the metric, you can use our AI to generate the contract. Simply click on the "Create Contract" button and follow the instructions. The AI will guide you through the process and help you create a contract that is ready to be deployed.
It is important that you provide a complete and clear description of the metric you want to measure, so that the AI can generate the proper name for the contract and find the relevant data source to be used to settle the contract.

You can also provide your own URL for the data source, if you have one. This is useful if you want to use a custom data source that is not available in the list of popular data sources. The data source will be verified by our AI to ensure that it is reliable, trustworthy and accessible.

**Contract Example**: 
```
Contract Name: Bitcoin/USD Q4 2026
Metric: Bitcoin price in US Dollars
Data Source: CoinGecko API, official closing
Frequency: Updated every minute
Settlement: Q4/2026 final Bitcoin price
Rules: Settlement at 11:59 PM UTC Dec 31, 2026
Interest: Very high (Bitcoin traders)
Competitors: 5 similar Bitcoin contracts
```

### Step 2: Check the Contract Details

The AI will provide you with a contract name, description, data source, settlement, rules, interest and competitors. Review them carefully and make sure they are correct. If you are satisfied with the contract, you can proceed to the next step.

#### Contract Name

The contract name is usually provided by our AI, and we discourage users from manually editing it, in order to keep the names consistent and avoid confusion.

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

#### Data Source Selection

Choose your data source:

```
Popular Data Sources:
- CoinGecko: Crypto prices
- Chainlink: Various metrics
- OpenWeather: Weather data
- FRED API: Economic data
- Yahoo Finance: Stock data
- Custom API: Any public API
```

1. Select Data Source type
2. Provide Data Source address/API endpoint
3. Dexetera verifies it's accessible
4. System tests Data Source data feed

**Important**: Data Source must be working and accessible for the entire contract duration. Our AI will verify this for you.

#### Initial Price / Starting Point

What's the current measurement?

```
Example: Bitcoin/USD 2026
Initial Price: $50,000 (today's Bitcoin price)
The price can also be a fraction of the current price, for example 1/100 of the current price, so in this example the initial price would be $500. Our AI will suggest the best initial price for you.

Example: Weather Contract
Starting: 15°C (current average)
In this case the initial price could be 15 $. Our AI will suggest the best initial price for you.
```

The initial price helps traders understand where you're starting from, and ideally it should reflect the current market price or value.


### Step 4: Set Expiration & Timeline

**Standard on Dexetera**: 1 year

Right now all contracts are set to expire in 1 year, but we plan to add more options in the future. Contracts can be rolled over for a fee before their expiration date, but this is not mandatory.

### Step 5: Review & Confirm

Before submitting:

**Checklist**:
- [ ] Contract name is clear
- [ ] Description explains metric fully
- [ ] Data Source is reliable and accessible
- [ ] Initial price is accurate
- [ ] Expiration date is reasonable
- [ ] Settlement rules are unambiguous
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
- **Answer questions**: Traders may ask about Data Source
- **Respond to disputes**: If Data Source data disputed, help clarify
- **Engage community**: Build reputation as fair creator

## Common Contract Creation Mistakes

❌ **Vague metric**
- "Bitcoin weird things happen 2026"
- Should be: "Bitcoin/USD settlement price Dec 31, 2026"

❌ **Unreliable Data Source**
- "I'll manually decide the price"
- Should be: "CoinGecko official API data"


❌ **Competing with established contracts**
- Creating 100th Bitcoin contract - we strongly discourage creating contracts that are similar to existing contracts.
- Better: Find niche not covered

❌ **No promotion**
- Create and hope people find it
- Should: Share actively on social media

## Legal & Responsibility Notes

### Creator Responsibilities

When you create a contract, you're responsible for:

1. **Metric accuracy**: Ensure it can be measured
2. **Data Source reliability**: Verify Data Source works and is trustworthy
3. **Clear rules**: Settlement must be unambiguous
4. **Integrity**: Don't create contracts with hidden advantages
5. **Dispute resolution**: If Data Source disputed, help clarify

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
- Force Data Source to pay if they disappear

### Your Liability

By creating a contract, you acknowledge:
- Metric might become unmeasurable
- Data Source might fail during contract life
- Disputes might occur (you help resolve)
- No insurance on trader funds

## Examples of Successful Contracts

### Example 1: Bitcoin/USD 2026

```
Metric: Bitcoin price in USD
Data Source: CoinGecko API
Expected traders: Thousands
Trading volume: Very high
Your fees: [HIGH]
Reason: Bitcoin always popular, clear measurement
```

### Example 2: Custom: "Tesla Stock Price 2026"

```
Metric: Tesla stock price end of 2026
Data Source: Yahoo Finance API
Expected traders: Hundreds
Trading volume: High
Your fees: [MEDIUM]
Reason: Stock traders interested, clear Data Source
```

### Example 3: Niche: "Ethereum Gas Fees Average 2026"

```
Metric: Average Ethereum gas price in 2026
Data Source: Ethereum network data + API
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