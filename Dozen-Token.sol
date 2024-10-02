// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    // Mapping of item names to their cost in tokens
    mapping(string => uint256) public itemCosts;

    // Event to track successful redemptions
    event TokensRedeemed(address indexed user, string itemName, uint256 value);

    // Constructor to initialize the token with a name and symbol
    constructor() ERC20("TIKI", "TKI") {
        // Mint 10 tokens initially
        _mint(msg.sender, 10 * 10 ** decimals());
    }

    // Decimals function to set the number of decimal places to 10
    function decimals() public pure override returns (uint8) {
        return 10;
    }

    // Function to mint new tokens and assign them to a specific address
    function mintTokens(address acc, uint256 value) public {
        _mint(acc, value);
    }

    // Function to burn (destroy) tokens from a specific address
    function burn(address acc, uint256 value) public {
        _burn(acc, value);
    }

    // Function to transfer tokens to a specific address
    function transferTokens(address to, uint256 value) public {
        _transfer(msg.sender, to, value); // Correct the internal transfer
    }

    // Function to check the balance of tokens
    function checkBalance() public view returns (uint256) {
        return balanceOf(msg.sender);
    }

    // Function to redeem tokens for an item (with event emission)
    function redeemTokens(string calldata itemName, uint256 value) external {
        require(itemCosts[itemName] > 0, "Item does not exist");
        require(balanceOf(msg.sender) >= value, "Insufficient balance");
        require(value >= itemCosts[itemName], "Value does not match item cost");

        _burn(msg.sender, value); // Burn the specified amount
        emit TokensRedeemed(msg.sender, itemName, value); // Emit event
    }

    // Function to add an item with its cost
    function addItem(string calldata itemName, uint256 cost) external {
        require(cost > 0, "Cost must be greater than zero");
        itemCosts[itemName] = cost;
    }
}











