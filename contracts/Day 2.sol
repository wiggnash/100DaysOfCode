// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
/*
contract SimpleStorage{

    //global scope
    uint256 public favNumber;

    // the more we do inside the contract the more gas we will use 
    function store(uint256 _favNumber) public {
        favNumber = _favNumber; //this will take some gas
// favNumber = favNumber + 1; // this will take some gas
        returningFavNumber(); // this will cost some gas even its a view function because its doing some work here on the blockchain
    }

    // view and pure functions which doesnt spend any gas 
    // view = Just reading something from the function which cannot update the blockchain
    // pure = reading and writing is blocked in the blockchain
    // pure is used for maths or some algorithm
    function returningFavNumber () public view returns(uint256){
        return favNumber;
    }
}
*/

contract SimpleStorageContract {
    // stuct will help us create a new type of data which can be used around the program something like uint or string
    // 1. first way to give values to the object of the data that we created 
    // People public person = People({phonenumber: 1234 , username : "Vicky"});

    // creating an array of structure 
    // this is a dynamic array 
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

    // data in solidity
    // 1. Stack
    // 2. Memory = Temp data can be modified later array,struct,mapping types
    // 3. Call data = Temp data and cannot be modified 
    // 4. Storage = Permanent , outside the function and can be modified 


    // mapping = Dict = Key and value pair
}