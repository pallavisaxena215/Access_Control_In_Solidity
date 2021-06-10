pragma solidity ^0.5.8;
import './BasicStorage.sol';

contract Storage{
      address[] public basicStorageAddresses;
function createStorage() external{
  

   address basicStorageAddress = address(new BasicStorage());
      basicStorageAddresses.push(basicStorageAddress);
}

function setData(uint _index , strind calldata _data){
    require(_index < basicStorageAddresses.length, 'This index does not exist');
    BasicStorage basicStorage = BasicStorage(basicStorageAddresses[_index]);
    basicStorage.setData(_data);
}
}