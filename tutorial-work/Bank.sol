pragma solidity ^0.8.4;



contract Bank {
    
    mapping(address => uint256) public accounts;
    
    modifier hasFunds(uint256 _amount){
        require(_amount <= accounts[msg.sender], "Does not own sufficent funds.");
        _;
    }
    
    function deposit() public payable {
        accounts[msg.sender] += msg.value;
    }
    
    function withdraw(uint256 _amount) public hasFunds(_amount) {
        accounts[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }
    
    function checkAssets() public view returns(uint256) {
        return address(this).balance;
    }
    
    //This is a copy of what the mapping function does, however I made this to apply my understanding
    function checkBankFunds() public view returns(uint256) {
        require(accounts[msg.sender] > 0, "You do not have funds in this house");
        return accounts[msg.sender];
    }
}