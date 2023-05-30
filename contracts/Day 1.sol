// SPDX-License-Identifier: MIT - Licensing and sharing the code a lot easy
// MIT License has the least restrictive out there  
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract HelloWorld {
  //  bool hasFavNumber = true;
    uint256 public favNumber = 123;  // default value of uint256 is 0
//     int favNumberInt = 5;
    // string favNumberString = "Five";

    // functino which will change the value of the fav number to some new value 
    function store(uint256 _favNumber) public {
        favNumber =_favNumber;
    }
}