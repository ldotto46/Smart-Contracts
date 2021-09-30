pragma solidity ^0.6.0;

//define contract !Remember every contract cost GAS
contract Storage {

    // this will get initialized to 0!
    uint256 public favoriteNumber;
    bool favoriteBool;
    bool favoriteBool2;

    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    // ARRAY similar to Python. List or a group of some objects. 
    
    People public person = People({favoriteNumber: 2, name: "Luigi"});

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }    
    
    // view means that I want to read some state of the blockchain. !!!!BLUE bottons = VIEWS!!!! 
    // pure Math just for algebra
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
    
}

// STRUCT ways to define objects like "People"
