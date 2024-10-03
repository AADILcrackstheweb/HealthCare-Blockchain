// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ShardManager {
    struct Shard {
        uint256 id;
        address[] members;
        mapping(address => bool) memberExists;
        uint256 threshold; // Threshold for secret sharing
        mapping(uint256 => uint256) shares; // Store shares
        uint256 secret; // Actual secret
    }

    mapping(uint256 => Shard) public shards;
    uint256 public shardCount;

    // Function to create a new shard
    function createShard(uint256 _id, uint256 _threshold) public {
        require(shards[_id].id == 0, "Shard already exists");
        shards[_id].id = _id; // Initialize the shard
        shards[_id].threshold = _threshold; // Set threshold for secret sharing
        shardCount++;
    }

    // Function to add a member to a shard
    function addMemberToShard(uint256 _shardId, address _member) public {
        require(shards[_shardId].id != 0, "Shard does not exist");
        require(!shards[_shardId].memberExists[_member], "Member already exists in shard");

        shards[_shardId].members.push(_member);
        shards[_shardId].memberExists[_member] = true;
    }

    // Function to split a secret using Shamir's45 Secret Sharing
    function splitSecret(uint256 _shardId, uint256 _secret) public {
        require(shards[_shardId].id != 0, "Shard does not exist");
        require(shards[_shardId].members.length > 0, "No members in shard");

        shards[_shardId].secret = _secret; // Store the secret

        uint256 threshold = shards[_shardId].threshold;
        for (uint256 i = 1; i <= threshold; i++) {
            uint256 share = (_secret + i * uint256(keccak256(abi.encodePacked(i)))) % 100; // Generate a share
            shards[_shardId].shares[i] = share; // Store the share
        }
    }

    // Function to reconstruct the secret from shares
    function reconstructSecret(uint256 _shardId, uint256[] memory _shares) public view returns (uint256) {
        require(_shares.length >= shards[_shardId].threshold, "Not enough shares provided");

        uint256 secret = 0;
        for (uint256 i = 0; i < _shares.length; i++) {
            secret += _shares[i]; // Combine the shares (simple addition for this example)
        }

        return secret; // Return the reconstructed secret
    }

    // Function to get members of a shard
    function getMembers(uint256 _shardId) public view returns (address[] memory) {
        return shards[_shardId].members;
    }

    // Function to get shard details
    function getShard(uint256 _shardId) public view returns (uint256 id, address[] memory members) {
        Shard storage shard = shards[_shardId];
        require(shard.id != 0, "Shard does not exist"); // Check if the shard exists
        return (shard.id, shard.members);
    }
}
