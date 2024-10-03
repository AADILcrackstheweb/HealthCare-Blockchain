const ShardManager = artifacts.require("ShardManager");

contract("ShardManager", (accounts) => {
    let shardManager;

    before(async () => {
        shardManager = await ShardManager.deployed();
    });

    it("should create a new shard", async () => {
        await shardManager.createShard(1, 3); // Create a shard with ID 1 and threshold 3
        const shardDetails = await shardManager.getShard(1);
        assert.equal(shardDetails[0].toString(), "1", "Shard ID should be 1");
    });

    it("should add a member to the shard", async () => {
        await shardManager.addMemberToShard(1, accounts[0]);
        const members = await shardManager.getMembers(1);
        assert.equal(members.length, 1, "There should be one member in the shard");
    });

    it("should split a secret into shares", async () => {
        await shardManager.splitSecret(1, 42); // Split secret 42
        const shares = await shardManager.shards(1).shares; // Retrieve shares (modify your contract to allow this)
        assert.isTrue(shares.length > 0, "Shares should be generated");
    });

    it("should reconstruct the secret from shares", async () => {
        const shares = [42, 56, 37]; // Example shares
        const reconstructedSecret = await shardManager.reconstructSecret(1, shares);
        assert.equal(reconstructedSecret.toString(), (42 + 56 + 37).toString(), "Reconstructed secret should match");
    });
});
