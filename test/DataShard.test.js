const DataShard = artifacts.require("DataShard");

contract("DataShard", (accounts) => {
    let dataShard;

    before(async () => {
        dataShard = await DataShard.deployed();
    });

    it("should store data in a shard", async () => {
        const dataHash = web3.utils.sha3("Some important data");
        await dataShard.storeData(1, dataHash, [accounts[0]]);
        const storedData = await dataShard.getData(1);
        assert.equal(storedData, dataHash, "Stored data should match the input data hash");
    });

    it("should check member authorization", async () => {
        const isAuthorized = await dataShard.isMemberAuthorized(1, accounts[0]);
        assert.equal(isAuthorized, true, "The member should be authorized");
    });
});
