// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Error{
    function testRequire(uint256 _num) public pure  {
        require(_num>10,"input must be greater than 10");
    }
    
    function testRevert(uint256 _num) public pure  {
        if(_num<10){
            revert("input must be lesser than 10");
        }
    }

    function testAssert(uint256 _num) public pure  {
        assert(_num==0);
    }
    // custom error
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function testCustomError(uint256 _withdrawAmount) public pure  {
        uint256 bal = 10;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({
                balance: bal,
                withdrawAmount: _withdrawAmount
            });
        }
    }
}