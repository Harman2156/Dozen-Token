# Degentkn on Avalanche C-Chain

This README provides an overview of the Degentkn ERC20 token implementation on the Avalanche platform's C-Chain.

## Overview

Degentkn is a custom ERC20 token deployed on the Avalanche C-Chain, utilizing the OpenZeppelin library for security and standardization. The token, named "Degen" with the symbol "DGN," includes functionalities such as minting, burning, transferring, and redeeming tokens.

## Features

- **Minting**: Create new tokens and assign them to specific addresses.
- **Burning**: Destroy tokens from specific addresses to reduce supply.
- **Transferring**: Send tokens between addresses.
- **Redeeming**: Redeem tokens by burning them from specific accounts.
- **Balance Checking**: View the balance of tokens for the caller's address.

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

7. **redeemtkn(address _acc, uint _value)**
   - Burns `_value` amount of tokens from the `_acc` address.
   - Requires that the caller has sufficient balance.

## Deployment

The contract should be deployed on the Avalanche C-Chain, a part of the Avalanche network designed for smart contract functionality. The C-Chain is compatible with the Ethereum Virtual Machine (EVM), making it ideal for deploying Solidity-based contracts.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

