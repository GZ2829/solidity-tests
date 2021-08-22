pragma solidity ^0.8.4;

contract ConstructorOwnerRequire {
    
    address public owner;
    
    
    constructor() {
        // Runs on deployment only
        owner = msg.sender;
    }
    
    function changeOwner(address newOwner) public {
        require(msg.sender == owner, "Only the owner can change the owner");
        owner = newOwner;
    }

    
}