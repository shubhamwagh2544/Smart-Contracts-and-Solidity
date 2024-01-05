// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;         //solidity version

contract SimpleStorage {
    //basic types : boolean, uint, int, address bytes
    bool isTrue;
    uint256 number;
    int digit;
    string name;
    address myAddress;
    bytes byteNumber;

    //struct
    struct Person {
        string myName;
        uint256 myNumber;
    }

    Person[] public persons;

    //mapping
    mapping(string => uint256) public nameToNumberMapping;

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
    function set(uint _number) public virtual {
        number = _number;
    } 

    //getter
    //view, pure
    function get() public view returns(uint256) {
        return number;
    }

    //memory, calldata, storage
    function addPersonToList(string memory _name, uint256 _number) public {
        persons.push(Person(_name, _number));
        nameToNumberMapping[_name] = _number;
    }

}