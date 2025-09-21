// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import {simpleStorage} from "./simpleStorage.sol";

contract storageFactory{

simpleStorage[] public listofmysimpleStorage;

function createSimpleStorageContract() public{

simpleStorage newContract = new simpleStorage();
listofmysimpleStorage.push(newContract);
}

function sfStore(uint256 _contractIndex, uint256 _newContractNum) public {
    simpleStorage gettingContract = listofmysimpleStorage[_contractIndex];
    gettingContract.storenum(_newContractNum);
}

function sfGet(uint256 _contractIndex) public view returns(uint256){
    
     return listofmysimpleStorage[_contractIndex].retrieve();
}

}