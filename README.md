## HealthCare-Blockchain
Developing mathematical models for optimal shard distribution to enhance blockchain scalability in healthcare systems. Exploring the application of threshold cryptography to ensure secure shard management and protect patient data. Optimizing identity management through decentralized control and secure authentication mechanisms.

In modern healthcare systems, managing vast amounts of sensitive patient data securely and efficiently is a significant challenge. Traditional centralized systems are prone to issues like single points of failure, limited scalability, and susceptibility to cyber-attacks. Blockchain technology, with its decentralized and transparent nature, presents a promising alternative. However, as healthcare data and transaction volumes grow, blockchains can encounter scalability problems.

This project investigates mathematical models for implementing data sharding in healthcare blockchains to overcome scalability issues. Sharding involves dividing large datasets into smaller, more manageable chunks called "shards," allowing parallel processing and reducing the load on individual nodes. Efficient shard distribution is crucial to ensure smooth access and management of healthcare data while maintaining system performance.

To enhance security and access control over these shards, the project integrates cryptographic threshold techniques. Threshold cryptography ensures that access to a shard is granted only when a predefined number of authorized participants (threshold) agree to unlock the data. This approach fortifies shard security and offers resilient identity management, ensuring that sensitive patient information remains protected from unauthorized access.

The primary goals of the project include:
  => Developing mathematical models for optimal shard distribution to enhance blockchain scalability in healthcare systems.
  => Exploring the application of threshold cryptography to ensure secure shard management and protect patient data.
  => Optimizing identity management through decentralized control and secure authentication mechanisms.
  
# SOFTWARE REQUIREMENTS
Ethereum-based blockchain platform (using Truffle suite)
Ganache for local blockchain testing
Solidity for smart contract development
Web3.js for blockchain interactions
IPFS (Pinata) for distributed file storage
Threshold cryptographic libraries (e.g. Shamir’s Secret Sharing)
Secure database systems for off-chain data storage

## Sharding Implementation

This project implements data sharding to manage large healthcare datasets on a private blockchain. Sharding involves breaking down data into smaller, manageable pieces called "shards," each processed independently by different nodes, allowing for parallel processing and system scalability.

### Shard Design and Creation
Each shard contains data related to specific healthcare groups (e.g., patients from a particular hospital or region). Partitioning algorithms ensure logical data distribution, reducing cross-shard queries. In development, we used Truffle Suite and Ganache to create a private blockchain where each shard operates as an individual smart contract.

### Smart Contracts
- **ShardManager.sol**: Manages shard creation, storage, and access control. Key functions include:
  - `createShard()`: Creates shards with specified thresholds for authorized access.
  - `addMemberToShard()`: Adds authorized members (e.g., doctors, institutions) to access specific shards.
  - `getShardMembers()`: Retrieves the list of members with shard access.
  
- **DataShard.sol**: Handles secure storage of healthcare data within each shard. Key functions include:
  - `storeData()`: Stores data in shards, accessible only by authorized members.
  - `isMember()`: Verifies if an address is authorized to access a shard.

This approach ensures decentralized, secure, and scalable management of sensitive healthcare data across multiple nodes.


Done by:
Aadil Arsh SR         - 21z201 - PSG College of Technology
Aswinkumar V          - 21z212 - PSG College of Technology
Kavin Dev R           - 21z224 - PSG College of Technology
Mithilesh EN          - 21z229 - PSG College of Technology
Sanjay Kumaar Eswaran - 21z248 - PSG College of Technology
Vaikunt Ramakrishnan  - 21z266 - PSG College of Technology



