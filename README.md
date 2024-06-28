Here's the corrected version of the README:

# Create and Mint Token

The objective of this project is to write a smart contract that will create your own ERC20 token.

## Description
Write a smart contract that will create our own ERC20 token. After deploying the contract, the owner should be able to mint tokens to a provided address, and any user should be able to burn and transfer tokens.

## Getting Started

### Executing Program
1. To execute this project, I have used Remix IDE (https://remix.ethereum.org/)
2. Firstly, import the standard ERC20 implementation from the OpenZeppelin library.
3. Also, import the Ownable contract from the same.
4. Write a smart contract named MyToken that inherits from ERC20 and Ownable.
5. Create a constructor that will create your token named "MyToken" with the symbol "MTK".
6. Create three functions that will mint, burn, and transfer tokens respectively.
7. CODE: 
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Importing ERC20 standard token and Ownable contract from OpenZeppelin library
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Contract named 'MyToken' which inherits ERC20 and Ownable
contract MyToken is ERC20, Ownable {
    // Constructor to create our own ERC20 token
    constructor() ERC20("MyToken", "MTK") {}

    // A function so that only the owner can mint tokens
    function mintTokens(address to, uint256 amount) public onlyOwner {
        // Internal function of ERC20 to create new tokens
        _mint(to, amount);
    }

    // A function so that any user can burn tokens
    function burnTokens(uint256 amount) public {
        // Internal function of ERC20 to destroy tokens
        _burn(msg.sender, amount);
    }

    // A function so that any user can transfer their tokens
    function transferTokens(address to, uint256 amount) public returns (bool) {
        // Internal function of ERC20 to transfer tokens
        // The tokens will be transferred from the caller's balance to the 'to' address
        _transfer(msg.sender, to, amount);
        return true;
    }
}
```

4. In this code, we have completed all the requirements of the project.
5. To test it: Firstly, compile the code and then deploy it. After that, call functions and check if it is working properly. To do this, we have compile and deploy options on the left sidebar of the IDE.
6. Interact with the deployed contract by calling the functions with appropriate parameters to verify their behavior.
