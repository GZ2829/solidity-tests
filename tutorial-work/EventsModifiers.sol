pragma solidity ^0.8.4;

contract EventsAndModifiers {
    
    event logUser(address indexed _user, uint _amount);
    
    modifier onlyOneEther(){
        require(msg.value == 1 ether);
        _;
    }
    
    function sendOneEth() public payable onlyOneEther() {
        emit logUser(msg.sender, msg.value);
    }
    
}