// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Todos{
    struct todo{
        string text;
        bool complated;
    }
    todo[] public todos;
}