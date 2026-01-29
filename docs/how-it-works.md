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
- ETH on Arbitrum (needed for gas fees to deposit USDD, usually less than $1). Remember: all trades are gas-free, but you need to pay gas fees to deposit USDC.

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

Once connected, you can search for contracts. You will see a list of contracts in the homepage and there is a search bar to search for contracts.

**Contract List** showing:
- Contract name (e.g., "Bitcoin/USD Futures 2026")
- Current price
- Time until expiration

**Each contract displays**:
- How much USDC is locked in this contract
- Total number of longs vs. shorts
- Data Source: Where the price comes from (official source URL)

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
3. Review the **order summary**:
   - Entry price
   - Liquidation price
   - Potential profit/loss
   - Trading fees
4. Click "Open Position"
5. Approve the transaction in your wallet
6. Wait for blockchain confirmation (usually 10-30 seconds on Arbitrum)

#### Option B: Create a New Contract

Dexetera allows you to create your own contracts. You can create a contract for any event that has a clear measurable outcome and a reliable data source.

1. Click "Create Contract"
2. Define the contract:
   - **Metric**: What you want to trade (e.g., "Bitcoin Price")
   - **Data Source**: Where the price comes from (official source URL)
   - **Expiration**: When the contract ends (default: 1 year)
   - **Initial Price**: Starting point for the metric
3. Submit transaction
4. Wait for confirmation

After creation, other traders can immediately trade this contract.

You can read more information about creating a contract here: [Create a Contract](./create-contract.md).

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

## Common Questions

**Q: Can I trade 24/7?**
A: Yes. Dexetera operates 24/7 since it runs on blockchain. No market hours.

**Q: What if the price moves against me?**
A: Your position shows a loss in real-time. You can close anytime to realize the loss or the profit.

**Q: Can I partially close a position?**
A: Yes. You can close any amount of your position at any time. 

**Q: What happens at expiration?**
A: Your position automatically settles at the oracle price. You receive your profit/loss in USDC.

**Q: How do I close my position?**
A: You can close your position anytime by submitting a "Close Position" transaction.

**Q: Can I roll over my position?**
A: Yes. You can roll over your position anytime before expiration by submitting a "Roll Over" transaction.

**Q: How do I know if my position is profitable?**
A: Your position shows a profit or loss in real-time. You can close anytime to realize the profit or limit the loss.


## Next Steps

- **Set up your wallet**: [Wallet Setup](./wallet-setup.md)
- **Get USDC**: [Funding USDC](./funding-usdc.md)
- **Learn about contracts**: [Understanding Contracts](./contracts-futures.md)
- **Understand risks**: [Risk & Liquidation](./risk-liquidation.md)

---