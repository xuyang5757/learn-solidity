// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract X{
    string public name;
    constructor(string memory _name){
    name=_name;
    }
}
contract Y{
    string public text;
    constructor(string memory _text){
    text=_text;
    }
}
contract A is X("input x"),Y("input y"){

}
contract B is X,Y{
    constructor(string memory _name,string memory _text) X(_name) Y(_text){

    }
}
contract C is X,Y{
    constructor() X("c input x") Y("c input y"){

    }
}
contract D is X,Y{
    constructor() Y("d input y") X("d input x"){

    }
}
