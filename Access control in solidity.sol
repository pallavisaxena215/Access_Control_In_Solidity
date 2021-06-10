pragma solidity ^0.5.8;
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol';
contract OwnedContract is Ownable{

    constructor() public Ownable() {

    }


    function publicFunction() external{

    }

    function privateFunction() onlyOwner(){

    }

    function renounce() external onlyOwner() {
        renounceOwnership();
    }
}