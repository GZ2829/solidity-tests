contract Mapping {
    
    address user = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address user2 = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    
    string name1 = "Heyman";
    string name2 = "Heyman2"; 

    mapping(address => uint) public balances;
    
    mapping(string => uint) public accountscore;

    function mapvaluestoaddress() public {
        
        balances[user] = 100;
        balances[user2] = 225;
        
        accountscore[name1] = 621;
        accountscore[name2] = 459;
    }

    
}