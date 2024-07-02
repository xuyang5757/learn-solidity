// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
interface ITest {
    function val() external view returns (uint256);
    function test() external;
}
contract Callback{
    uint256 public val;
    fallback() external {
        val = ITest(msg.sender).val();
     }
     function test(address target) external {
        ITest(target).test();
    }
}