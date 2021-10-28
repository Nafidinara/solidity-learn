 // SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

contract Hello {
    // string public value;
    string public value = 'ini nilai awal';
    bool public status = true;
    int256 public jumlah = 0;
    
    // kalo int bisa minus, tapi kalo uint tidak bisa minus/dari 0
    
    // type data struct
    struct Person {
        string _firstName;
        string _lastName;
    }
    
    // type data mapping
    mapping(int => Person) public peoples;
    
    int public personCount=0;
    int public peopleCount=0;
    
    Person[] public persons;
    
    enum State {Draft, Open, Done}
    State public state;
    
    // constructor akan langsung dijalankan
    constructor() public {
        state = State.Draft;
        // value = "ini nilai awal";
    }
    
    function setValue(string memory _value) public{
        value = _value;
    }
    
    function setStateToOpen() public {
        state = State.Open;
    }
    
    function isOpen() public view returns(bool) {
        return state == State.Open;
    }
    
    function addPerson(string memory _firstName, string memory _lastName)public {
        persons.push(Person(_firstName,_lastName));
        personCount++;
    }
    
    function addPeople(string memory _firstName, string memory _lastName)public {
        peoples[peopleCount] = Person(_firstName,_lastName);
        peopleCount++;
    }
    
    // jika string dideklarasikan public maka tidak perlu getter
    // function getValue() public view returns(string memory){
    //     return value;
    // }
}