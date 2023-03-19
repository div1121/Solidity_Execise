pragma solidity ^0.6.0;
contract PasswordSafe2 {

    uint256 public var256_1 = 1337;
    bool public locked = true;
    bool public bool_2 = false;
    bool public bool_3 = true;
    uint16 public var16_3 = 2022;
    uint16 private useThis = 2;
    uint16 private var16_2 = 63;
    address public contractAdd = address(this);
    uint256 private otpUseTime = 0;
    uint256 private var256_3 = 1337;
    bytes32 private notThePW;
    bytes32 private ThisIsThePassword;
    uint16 private efgh = 11;
    bool private _Pass = true;
    bool private _This = true;
    bool private _Level = false;
    address private owner;
    uint16 private counter;
    bytes32 public constant constant1 = "_____Welcome_to_Hackaday_!!_____";
    struct Passwords {
        bytes32 name;
        uint256 secretKey;
        bytes32 password;
    }
    mapping (uint256 => Passwords) private passwordBook;

  constructor() public {
    owner = msg.sender;
  }
  function addPassword(uint256 mKey, bytes32 _name, uint256 _sKey, bytes32 _pw) public {
    require(msg.sender == owner);
    passwordBook[mKey] = Passwords({name:_name,secretKey:_sKey,password:_pw});
  }
  function getOTP() public returns (uint16){
    useThis = uint16(block.number*block.difficulty % 5);
    otpUseTime++;
  }
  function unlock(uint256 _key) public {
    require(_key == passwordBook[useThis].secretKey && otpUseTime >= 1);
    locked = false;
  }
  fallback() external {}
}