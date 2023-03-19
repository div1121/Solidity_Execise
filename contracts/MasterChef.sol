// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.6;

import "https://github.com/vonderfinance/vonder-masterchef/blob/master/contracts/MasterChef.sol";
import "https://github.com/vonderfinance/vonder-masterchef/blob/master/contracts/VonderToken.sol";

contract MyMasterChef is MasterChef  {
    constructor(address von, address own, uint256 _vonPerBlock, uint256 _startBlock) public MasterChef(VonderToken(von), own, own, _vonPerBlock, _startBlock) {
        // testing
    }
}