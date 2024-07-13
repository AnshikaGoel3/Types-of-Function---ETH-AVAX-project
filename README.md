# Create and Mint Token

In this Project, we have to write a smart contract thet will help to write your own ERC20 token. 
After deploying the contract only the contract owner should be able to mint tokens to a provided
address and any use should be ablle to burn and transfer tokens.

## Description
For this project, I have created a smart contract named "QuestCoins" in context of a online game.
This will allow players to earn the tokens which are "QuestCoins" after completing the Quests.
These Quests coins can only be minted to the player's account by the owner of the game.
Also, players can use them to buy in-game assets by burning their tokens and can also transfer the
tokens to other players account.

## Getting Started

### Installing
1. Download and open Remix IDE from https://remix.ethereum.org/.
2. Create a new file with a .sol extension, as the language used is Solidity.

### Executing program
1. In the code firstly import ERC20 Standard token, Ownable Contract and ERC20Burnable from openzeppelin library.
2. Create a smart Contract named "QuestCoins" that inherits from ERC20 Standard token, Ownable Contract and ERC20Burnable.
3. Create a constructor that will intialize a token named "QuestCoins" and symbol "QC".
4. Now write the three functions for mint , burn and transfer tokens functionality.
5. Here, is the code:
``` javascript
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

/*import ERC20 standard token, Ownable contract and ERC20Burnable for burn functionality
from openzeppelin library */
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

//Create a contract named "QuestCoins" which inherits from ERC20, Ownable and ERC20Burnable
contract QuestCoins is ERC20, Ownable, ERC20Burnable {

    //constructor to create a token named "QuestCoins" with symbol "QT"
    constructor() ERC20("QuestCoins", "QT") Ownable(msg.sender) {}

    //function to mint the tokens, can be only called by the owner of the contract
    function mintTokens(address to_Address, uint _amount) public onlyOwner {
        _mint(to_Address, _amount);
    }

    //function to burn the tokens, it can be called by anyone
    function burnTokens(uint _amount) public {
        _burn(msg.sender, _amount);
    }

    //function to trnsfer tokens
    function transferTokens(address to_Address, uint _amount) public {
        transfer(to_Address, _amount);
    }
}
```
6. In this code we have completed all the requirements of the project.
7. To test it: firstly, compile the code and then deploy it, after that call functions and check if it working properly. To do this we have compile and deploy options on the left sidebar of the IDE.
8. Working of the Code:
  * Minting tokens:
   As the contract owner, call the mintTokens function.
   Provide the recipient address and the amount of tokens to mint.
  * Burning tokens:
    Any user can call the burnTokens function.
    Provide the amount of tokens to burn.
  * Transferring tokens:
    Any user can call the transferTokens function.
    Provide the recipient address and the amount of tokens to transfer.

## Help
If you encounter any issues, ensure that your Solidity version is compatible with the code and all necessary dependencies from the OpenZeppelin library are properly imported.

## Author
Anshika Goel

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
