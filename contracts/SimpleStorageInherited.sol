// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import {SimpleStorage} from "./SimpleStorage.sol";

contract SimpleStorageInherited is SimpleStorage {

    function set(uint256 _newNumber) public override {
        number = _newNumber + 5;
    }

}