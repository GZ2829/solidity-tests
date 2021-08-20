pragma solidity ^0.8.4;



contract Struct {

    struct Human {
       string firstname;
       string lastname;
       uint age;

    }

    Human public bro;

    function thething() public {
        bro = Human({
            firstname: "Johnson",
            lastname: "yaboy",
            age: 59
        });
    }

    
}