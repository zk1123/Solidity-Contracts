//SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract simpleStorage {

    uint256 fnum;

    struct Person{
        string name;    
        uint256 age;
    }

    Person public pat = Person("pat", 27);

    function storenum (uint256 _Num) public virtual{
        fnum = _Num;
    }

    function retrieve() public view returns(uint256){
        return fnum;
    }

    Person[] public people;

    mapping(string=>uint256) public nameToAge;

    function addPerson(string memory _name, uint256 _age) public {
        people.push(Person(_name, _age));
        nameToAge[_name] = _age;
    }
    


 }
