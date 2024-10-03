const ShardManager = artifacts.require("ShardManager");
const DataShard = artifacts.require("DataShard");

module.exports = function (deployer) {
    deployer.deploy(ShardManager);
    deployer.deploy(DataShard);
};
