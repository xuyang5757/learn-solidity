// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Account{
    uint256 public balance ;
    function store(uint256 _amount) public {
       uint256 oldBalance=balance;
       uint256 newBalance=balance+_amount;
       require(newBalance>=oldBalance,"overflow");
       balance=newBalance;
       assert(newBalance>=oldBalance);
    }
    function withdraw(uint256 _amount) public {
        uint256 oldBalance=balance;
        //  require(_amount<=balance,"underflow111111111111");
         if(_amount>balance){
            revert("underflow22222222222222");
         }
         balance -= _amount;

        assert(balance <= oldBalance);
    }

}