// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract SimpleStorage {
    //basic types : boolean, uint, int, address bytes
    bool isTrue;
    uint256 number;
    int digit;
    string name;
    address myAddress;
    bytes byteNumber;

    //constructor
    constructor() {
        isTrue = true;
        number = 88;
        digit = -88;
        name = "shubham wagh";
        myAddress = 0x0F23407b1fA015D42a9dAac5b1A1bf4A07cC60bB;
        byteNumber = "cat";
    }

    //setter
    function set(uint _number) public {
        number = _number;
    } 

    //getter
    function get() public view returns(uint256) {
        return number;
    }

}