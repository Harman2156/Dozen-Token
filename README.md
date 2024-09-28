# Degentkn on Avalanche C-Chain

This README provides an overview of the Degentkn ERC20 token implementation on the Avalanche platform's C-Chain.

## Overview

Degentkn is a custom ERC20 token deployed on the Avalanche C-Chain, utilizing the OpenZeppelin library for security and standardization. The token, named "Degen" with the symbol "DGN," includes functionalities such as minting, burning, transferring, and redeeming tokens, additem,checkbalance.

## Features

- ERC20 Token Implementation : Built on the OpenZeppelin ERC20 library.
- Minting Tokens : Allows minting tokens to specific addresses.
- Burning Tokens : Allows burning tokens from specific addresses.
- Transferring Tokens : Allows transferring tokens between addresses.
- Token Redemption : Allows redeeming tokens by burning them from specific accounts.
- Adding Items : Allows adding items with associated costs for token redemption.
- Balance Check : Allows users to check their token balance.

## Token Details

- **Name**: Degen
- **Symbol**: DGN
- **Decimals**: 10 (Each token can be divided into 10^10 smaller units)

## Implementation

The contract is implemented using Solidity and extends the OpenZeppelin ERC20 contract. It includes additional functionalities for minting, burning, and transferring tokens, with checks to ensure sufficient balances.

### Functions

1. **constructor()**
   - Initializes the token with the name "Degen" and symbol "DGN".

2. **decimals()**
   - Overrides the default decimals function to set the number of decimal places to 10.

3. **mintTokens(address acc, uint value)**
   - Mints `value` amount of tokens to the `acc` address.

4. **burn(address acc, uint value)**
   - Burns `value` amount of tokens from the `acc` address.
   - Requires that the caller has sufficient balance.

5. **checkBalance()**
   - Returns the token balance of the caller's address.

6. **transferuser(address to, uint amount)**
   - Transfers `amount` of tokens from the caller's address to the `to` address.
   - Requires that the caller has sufficient balance.
  
7. redeemTokens(address _acc, uint _value)

   - Burns _value amount of tokens from the _acc address for redemption purposes.
   - Requires that the caller has sufficient balance.
   - addItem(string calldata itemName, uint256 cost)

8. Adds an item with an associated token cost to the contract.
   - The item is stored using a hashed version of its name (keccak256).
   - Ensures that the cost is greater than zero before adding the item.

## Deployment

The contract is designed for deployment on the Avalanche C-Chain, a part of the Avalanche network optimized for smart contracts and compatible with the Ethereum Virtual Machine (EVM). Avalanche C-Chain provides high throughput, low fees, and EVM compatibility, making it ideal for Solidity-based contracts.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

