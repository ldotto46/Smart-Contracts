
pragma solidity ^0.6.0;

//define contract !Remember every contract cost GAS
contract Storage {

    // this will get initialized to 0!
    uint256 public favoriteNumber;


    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        uint256 test = 4;
        
    }    
    
    // view means that I want to read some state of the blockchain. !!!!BLue bottons = VIEW!!!! 
    // pure 
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
    
}
