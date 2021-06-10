pragma solidity ^0.5.8;

contract BasicStorage {
    string public data;

    function setData(string calldata _data) external{
        data=_data;
    }
    
}