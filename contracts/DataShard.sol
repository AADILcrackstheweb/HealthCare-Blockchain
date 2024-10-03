// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DataShard {
    struct Data {
        bytes32 dataHash;
        address[] authorizedMembers;
    }
    
    mapping(uint256 => Data) public dataShards;

    function storeData(uint256 _shardId, bytes32 _dataHash, address[] memory _authorizedMembers) public {
        require(dataShards[_shardId].dataHash == 0, "Data already exists in this shard");

        dataShards[_shardId].dataHash = _dataHash;
        dataShards[_shardId].authorizedMembers = _authorizedMembers;
    }

    function getData(uint256 _shardId) public view returns (bytes32) {
        return dataShards[_shardId].dataHash;
    }

    function isMemberAuthorized(uint256 _shardId, address _member) public view returns (bool) {
        for (uint256 i = 0; i < dataShards[_shardId].authorizedMembers.length; i++) {
            if (dataShards[_shardId].authorizedMembers[i] == _member) {
                return true;
            }
        }
        return false;
    }
}
