pragma solidity ^0.8.4;


contract StorageMemoryKeyword {
    
    uint256[] public uintArray;
    
    function thefunction() public {
        
        
        uintArray.push(5);
        uintArray.push(8);
        
        
        uint256[] memory newArray = uintArray;
        
        newArray[0] = 0;
    }
}