// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorage;

    //deploying SimpleStorage contract using StorageFactory contract
    function createSimpleStorage() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfSimpleStorage.push(simpleStorage);
    }

    //interact with SimpleStorage methods inside StorageFactory
    function sfset(uint256 _simpleStorageIndex, uint256 _number) public {
        SimpleStorage simpleStorage = listOfSimpleStorage[_simpleStorageIndex];
        simpleStorage.set(_number);
    }

    //interact with SimpleStorage methods inside StorageFactory
    function sfget(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage simpleStorage = listOfSimpleStorage[_simpleStorageIndex];
        return simpleStorage.get();
    }
    
}