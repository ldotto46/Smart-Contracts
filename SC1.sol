

pragma solidity ^0.6.0;

//define contract !Remember every contract cost GAS
contract Storage {

    // this will get initialized to 0!
    uint256 public favoriteNumber;
    bool favoriteBool;

    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    // ARRAY similar to Python. List or a group of some objects. FUnciona igual que lo anterior. SI pongo entre los corchetes 1 digo que solo tiene maximo 1
    
    People[1] public people;
    
    People public person = People({favoriteNumber: 2, name: "Luigi"});

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }    
    
    // view means that I want to read some state of the blockchain. !!!!BLUE bottons = VIEWS!!!! 
    // pure Math just for algebra
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
// Con memory guardamos data durante la ejecucion de la FUncion
// Con storage guardamos la data y queda guardada

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
    }
}

// STRUCT ways to define objects like "People"


// FIGHT BETWEEN PEOPLE AND ZOMBIES

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
    } 

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function _createRandomZombie(string memory _name) public {  
        uint randDna = zombies.generateRandomDna(Zombie(_name));


    } 
}

