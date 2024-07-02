// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract ReentrancyGuard{
    bool private locked;
    modifier lock(){
        require(!locked);
        locked=true;
        _;
        locked=false;
    }
    function test() public lock{
          bytes memory b = "";
        msg.sender.call(b);
    }
}