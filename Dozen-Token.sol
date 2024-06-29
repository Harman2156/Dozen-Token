// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract Degentkn is ERC20 {
    // Constructor used to initialize  token with a name and symbol 
    constructor() ERC20("Degen", "DGN") {
    }
    // decimals function to set the number of decimal places to 10
    function decimals() public pure override returns (uint8) {
        return 10;
    }
     // Function to mint new tokens and assign them to a specific address
    function mintTokens(address acc, uint value) public {
        _mint(acc, value);
    }
    // Function to burn (destroy) tokens from a specific address
    function burn(address acc , uint value) public {
        require(value < balanceOf(msg.sender),"insufficient balance");
        _burn(acc , value);
    }
    // Function to check the balance of tokens
    function checkBalance() public view returns (uint256) {
        return this.balanceOf(msg.sender);
    }
    // Function to transfer tokens from one address to another
    function transferuser(address to, uint amount) public {
        require(amount < balanceOf(msg.sender),"insufficient balance");
        transfer(to, amount);
    }
    // Function to redeem tokens
    function redeemtkn(address _acc, uint _value) public {
        require(balanceOf(msg.sender) >= _value, "insufficient balance");
        _burn(_acc, _value);
    }
}



