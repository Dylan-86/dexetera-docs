---
id: how-it-works
sidebar_position: 3
title: How It Works
---

# How Dexetera Works: Step by Step

This guide walks you through the entire Dexetera trading process, from connecting your wallet to closing a position.

## The Trading Flow

### Step 1: Prepare Your Wallet

**What you need**:
- A crypto wallet (MetaMask, Phantom, Wallet Connect, etc.)
- USDC on Arbitrum network
- ETH on Arbitrum (for gas fees—usually less than $1)

**Don't have USDC on Arbitrum?**
- If you have USDC on Ethereum mainnet or other networks, you need to bridge it
- Use bridges like: Stargate, Across, or Arbitrum Portal
- (See [Funding USDC](./funding-usdc.md) for detailed instructions)

### Step 2: Connect Your Wallet to Dexetera

1. Go to Dexetera website
2. Click "Connect Wallet"
3. Select your wallet type (MetaMask, Phantom, etc.)
4. Approve the connection
5. Switch to Arbitrum network if prompted

**Your wallet is connected when you see your Arbitrum address in the top right.**

### Step 3: View Available Contracts

Once connected, you see:

**Contract List** showing:
- Contract name (e.g., "Bitcoin/USD Futures 2026")
- Current price
- Trading volume
- Time until expiration
- Available leverage options

**Each contract displays**:
- How much USDC is locked in this contract
- Total number of longs vs. shorts
- **Data Source**: Where the price comes from (official source URL)

**Q: What happens at expiration?**
A: Your position automatically settles at the last price of the underlying asset at the time of expiration. You receive your profit/loss in USDC.

**Q: Do I need to pay gas fees?**
A: No, all trades are gas-free. The platform pays the gas fees for all trades.

### Step 4: Open a Position

#### Option A: Trade an Existing Contract

1. Click on a contract from the list
2. Choose:
   - **Direction**: LONG (price goes up) or SHORT (price goes down)
   - **Amount**: How much USDC to deposit
   - **Leverage**: 1x to [MAX - depends on contract] (optional)
3. Review the **order summary**:
   - Entry price
   - Liquidation price
   - Potential profit/loss
   - Trading fees
4. Click "Open Position"
5. Approve the transaction in your wallet
6. Wait for blockchain confirmation (usually 10-30 seconds on Arbitrum)

#### Option B: Create a New Contract

1. Click "Create Contract"
2. Define the contract:
   - **Metric**: What you want to trade (e.g., "Bitcoin Price")
   - **Data Source**: Where the price comes from (oracle)
   - **Expiration**: When the contract ends (default: 1 year)
   - **Initial Price**: Starting point for the metric
3. Submit transaction
4. Wait for confirmation

After creation, other traders can immediately trade this contract.

### Step 5: Monitor Your Position

Once your position is open, you can see:

**Real-time data**:
- Current entry price vs. current market price
- Unrealized profit/loss (P&L)
- Current liquidation price
- Position size (amount × leverage)

**Status indicators**:
- "Active" = Position is open and monitored
- "At Risk" = Liquidation is close (warning)
- "Liquidation Imminent" = Immediate danger

### Step 6: Close or Manage Your Position

You have several options:

#### Close Position (Sell)

1. Find your position in "My Positions"
2. Click "Close"
3. Review the closing price and fees
4. Confirm the transaction
5. Receive your P&L (profit or loss) in USDC

**Fees**: You pay trading fees for closing, which reduces your profit or increases your loss.

#### Roll Over Contract

If your contract is nearing expiration (usually 30-60 days before):

1. Click "Roll Over"
2. Choose a new contract (usually the next 1-year contract)
3. Confirm transaction
4. Your position moves to the new contract

**Note**: Rolling over applies a small fee but keeps your position active.

#### Adjust Leverage (if available)

Some contracts allow you to change leverage without closing:

1. Click "Adjust Leverage"
2. Enter new leverage amount
3. Confirm
4. Your liquidation price updates immediately

## The Math Behind Trading

### How Leverage Works

**Without leverage** (1x):
- You deposit 100 USDC
- You control 100 USDC worth of position
- 20% price move = 20 USDC profit/loss (20% of position)

**With leverage** (5x):
- You deposit 100 USDC
- You control 500 USDC worth of position
- 20% price move = 100 USDC profit/loss (20% of 500 USDC)
- **BUT** 4% price move = liquidation (your 100 USDC is lost)

### Liquidation Explained

**Liquidation price** = The price where your position is automatically closed to prevent the protocol from losing money.

**Example**:
- You go LONG with 100 USDC at 5x leverage
- Entry price: Bitcoin = $50,000
- Liquidation price: Bitcoin = $40,000
- If Bitcoin drops to $40,000, your position closes automatically
- You lose your 100 USDC deposit
- The protocol prevents you from owing money

### Trading Fees

Dexetera charges fees on:

1. **Opening a position**: [FEE_PERCENTAGE]% of position size
2. **Closing a position**: [FEE_PERCENTAGE]% of position size
3. **Rolling over**: [FEE_PERCENTAGE]% of position size

**Example**:
- You open a 100 USDC position
- Fees: 100 × [FEE_PERCENTAGE]% = [FEE_AMOUNT] USDC deducted immediately
- You must profit more than the fees to break even

**See [Fees & Pricing](./fees-pricing.md) for exact rates.**

## Position Examples

### Example 1: Long Bitcoin (Expecting Price Up)

```
Action: Open Position
Contract: Bitcoin/USD Futures 2026
Direction: LONG
Amount: 100 USDC
Leverage: 5x
Entry Price: $50,000

Scenario A (Price goes UP to $55,000):
- Profit: 5 USDC (before fees)
- With fees: ~3 USDC profit
- Return: 3% on 100 USDC

Scenario B (Price goes DOWN to $45,000):
- Loss: 50 USDC
- Liquidation triggered
- Total loss: 100 USDC (entire deposit)
```

### Example 2: Short Ethereum (Expecting Price Down)

```
Action: Open Position
Contract: Ethereum/USD Futures 2026
Direction: SHORT
Amount: 50 USDC
Leverage: 2x
Entry Price: $3,000

Scenario A (Price goes DOWN to $2,500):
- Profit: 50 USDC (before fees)
- With fees: ~47 USDC profit
- Return: 94% on 50 USDC

Scenario B (Price goes UP to $3,500):
- Loss: 50 USDC (entire deposit)
- Liquidation triggered
```

## Timeline of a Trade

```
T=0s     → You submit "Open Position" transaction
T=10-30s → Transaction confirmed on Arbitrum
T=30s    → Position appears in your "My Positions"
         → Liquidation price calculated
         → Real-time monitoring begins

T=Day 1 to 364 → Position active, monitoring price updates
T=Day 350 → "Roll Over" becomes available (near expiration)
T=Day 365 → Contract expires
           → Position auto-settles at final price
           → Profit/loss transferred to your wallet

(OR you close early anytime)
```

## Common Questions

**Q: Can I trade 24/7?**
A: Yes. Dexetera operates 24/7 since it runs on blockchain. No market hours.

**Q: What if the price moves against me?**
A: Your position shows a loss in real-time. You can close anytime to realize the loss.

**Q: What if Dexetera goes down?**
A: Dexetera is decentralized—no central server. Your funds are in smart contracts. You can always access them via blockchain.

**Q: Can I partially close a position?**
A: [Clarify: Yes/No based on Dexetera features]. See [FAQ](./faq-troubleshooting.md).

**Q: What happens at expiration?**
A: Your position automatically settles at the oracle price. You receive your profit/loss in USDC.

## Next Steps

- **Set up your wallet**: [Wallet Setup](./wallet-setup.md)
- **Get USDC**: [Funding USDC](./funding-usdc.md)
- **Learn about contracts**: [Understanding Contracts](./contracts-futures.md)
- **Understand risks**: [Risk & Liquidation](./risk-liquidation.md)

---

**Important**: This is leverage trading. Losses can be rapid and total. Only trade with money you can afford to lose.