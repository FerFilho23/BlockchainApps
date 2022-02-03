// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0; //Defining the Solidity version

contract ContactList {

    struct People {
        string name;
        uint256 age;
        uint256 phone;
    }

    People[] public contactList;    //Dynamic array
    mapping(string => uint256) public nameToAge;

    function addContact (string memory _name, uint256 _age, uint256 _phone) public{   //memory - data will only be stored during the execution 
        contactList.push(People(_name, _age, _phone));                        //storage - data will persist after the function execution 
        nameToAge[_name] = _age;
    }
}