pragma solidity ^0.8.4;



contract ViewPure {

    // Every function costs a tiny fraction of ether, by determining if its pure or view you save some ether due to not having to deal with the state of the contract
    
    // Pure function does not change state or view anything from the current state
    function doSomethingPure() public pure returns(uint256) {
        return 3+2;
    }

    // view function does not change state but you do view the state
    function checkBalance() public view returns(uint256) {
        return(address(this).balance);
    }
    
}