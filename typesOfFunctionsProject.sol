// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Importing ERC20 standard token and Ownable contract from OpenZeppelin library
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

//contarct named 'MyToken' which inherits ERC20 and Ownable
contract MyToken is ERC20, Ownable {
    //constructor to create our own ERC20 token
    constructor() ERC20("MyToken", "MTK") Ownable(msg.sender) {}

    //a function so that only owner can mint tokens
    function mintTokens(address to, uint amount) public onlyOwner{
        //Internal Function of ERC20 to create new tokens
        _mint(to, amount);
    }

    //a function so that any user can burn tokens
    function burnTokens(uint amount) public {
        //Internal function of ERC20 to destro tokens
        _burn(msg.sender, amount);
    }

    //a function so that any user can transfer their tokens
    function transferTokens(address to, uint amount) public returns (bool) {
        //Internal function of ERC20 to tranfer tokens
        //the tokens will be transferred from the caller's balance to the 'to' address
        _transfer(msg.sender, to, amount);
        return true;
    }

}