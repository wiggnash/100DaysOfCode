
    /* EVM - Ethereum Virtual machine = Code that we write gets complied in this 
     EVM Compatible : Avalachne , Fantom , Polygon = EVM Compatiable where we can write code in solidity and deploy in these blockchain
    */
    // Importing contracts into other contracts

//this contract will deploy other contracts and interact with it
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

//import the contract
import "./Day 2.sol";
contract StorageFactory{
    //function to deploy the contract
    // here it is public therefore anyone can call it
   // SimpleStorageContract public simpleStorage; // this is how our contract will know the other contract exist
   SimpleStorageContract[] public simpleStorageArray;
    function createsimpleStorageContract() public {
        SimpleStorageContract simpleStorage = new SimpleStorageContract(); // creating the new contract with the help of new keyword
        simpleStorageArray.push(simpleStorage);
    }

    // create a function which can interact with the functions thats present in the other contract
    function sfAddUsers(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        
    }
}

// this is the contract to be deloyed or to interact with = This is the first method to use 
// can import the code 
/*
contract SimpleStorageContract {
 
    People[] public users; 
    mapping(string => uint256) public mappedNameAndFavNumber;

    struct People {
        uint256 phonenumber;
        string username;
    }

    function addusers(string memory _name,uint256 _phonenumber) public  {
        // make sure that we pass the variables at the correct ordern of the struct 
        users.push(People(_phonenumber,_name));
        mappedNameAndFavNumber[_name] = _phonenumber;
    }
}

*/