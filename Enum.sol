// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Enum{
    enum Status{
        Prepare,
        Start,
        End,
        Cancel
    }
    Status public stat;
    function set(Status _stat) public {
        stat=_stat;
    }
    function get() public view returns(Status){
        return stat;
    }
    function cancel() public {
        stat=Status.Cancel;
    }
    function reset() public {
        delete stat;
    }
    
}