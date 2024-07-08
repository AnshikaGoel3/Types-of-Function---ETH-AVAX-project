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