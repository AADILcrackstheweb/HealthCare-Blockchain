## HealthCare-Blockchain
Investigating and developing mathematical models for optimal shard distribution to enhance blockchain scalability in healthcare systems. Exploring the application of threshold cryptography to ensure secure shard management and protect patient data. Optimizing identity management through decentralized control and secure authentication mechanisms.

In modern healthcare systems, managing vast amounts of sensitive patient data securely and efficiently is a significant challenge. Traditional centralized systems are prone to issues like single points of failure, limited scalability, and susceptibility to cyber-attacks. With its decentralized and transparent nature, blockchain technology presents a promising alternative. However, as healthcare data and transaction volumes grow, blockchains can encounter scalability problems.

This project investigates mathematical models for implementing data sharding in healthcare blockchains to overcome scalability issues. Sharding involves dividing large datasets into smaller, more manageable chunks called "shards," allowing parallel processing and reducing the load on individual nodes. Efficient shard distribution is crucial to ensure smooth access and management of healthcare data while maintaining system performance.

The project integrates cryptographic threshold techniques to enhance security and access control over these shards. Threshold cryptography ensures that access to a shard is granted only when a predefined number of authorized participants (threshold) agree to unlock the data. This approach fortifies shard security and offers resilient identity management, ensuring that sensitive patient information remains protected from unauthorized access.

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

# Blockchain-Based Healthcare System: Model Architecture

<div align="center">
<img src="https://github.com/user-attachments/assets/d6e9f6f1-01fa-4918-a46a-aa42d3096119" alt="Alt text" width="600" height="500" align="center"/>
</div>

## Overview
This project outlines the architecture of a blockchain-based healthcare system, designed to manage sensitive healthcare data securely, ensure decentralized access, and provide scalability through sharding. The architecture consists of multiple layers, each serving distinct roles within the system.

### 1. User Layer
Represents the end-users who interact with the system, categorized as:
- **Patients**: Individuals who provide health data and use the platform to access medical records, treatment plans, and health monitoring tools.
- **Healthcare Providers**: Physicians and hospitals that access patient data for diagnosis and care management, securely exchanging medical data via the platform.
- **Administrators**: IT personnel or healthcare administrators managing system policies, user permissions, and regulatory compliance.

### 2. Application Layer
Defines how users interact with the system through:
- **User Interface**: Web or mobile interfaces tailored to each user type (patients, providers, administrators) for accessing relevant data and services.
- **API Gateway**: Manages incoming API requests and facilitates secure data flow between the application and blockchain.

### 3. Blockchain Layer
The core of the system where blockchain technology ensures data security and decentralization:
- **Smart Contracts**: Enforce access controls, business logic, and automatic execution of rules (e.g., only authorized providers access patient data).
- **Consensus Mechanism**: Ensures data consistency across the distributed network through participant agreement on blockchain state.
- **Data Sharding**: Enhances scalability by dividing large data sets into smaller "shards" distributed across nodes.
- **Threshold Cryptography**: A security measure where a predefined number of participants must agree before accessing or decrypting data.

### 4. Storage Layer
Manages data storage, balancing on-chain and off-chain needs:
- **Distributed Ledger**: The blockchain itself, storing immutable transaction data, including access logs and transactions.
- **Off-chain Storage**: Stores large files (e.g., medical imaging, videos) off-chain, while storing file hashes on-chain for integrity and security.

### 5. Integration Layer
Facilitates interaction with external systems and ensures regulatory compliance:
- **Healthcare Systems**: Integrates with existing healthcare infrastructure (e.g., Electronic Health Records) to ensure smooth data exchange.
- **Regulatory Compliance**: Ensures adherence to healthcare regulations like HIPAA and GDPR, maintaining legal compliance for handling patient data.

## Implementation
![image](https://github.com/user-attachments/assets/82110c18-c12e-4435-ab2e-2ec981e7f7fb)
![image](https://github.com/user-attachments/assets/45988a21-a150-4be9-bde7-44722cb95dd4)
![image](https://github.com/user-attachments/assets/23dcfc44-b238-4c23-9778-0e977206705e)
![image](https://github.com/user-attachments/assets/d59c13c0-889d-40cb-a3b0-4f652c8e7140)



## Conclusion
This architecture provides a secure, scalable, and efficient blockchain-based solution for managing healthcare data, ensuring that sensitive patient information is handled with the highest levels of privacy and integrity.



**Done by:**
Aadil Arsh SR         - 21z201 - PSG College of Technology, 
Aswinkumar V          - 21z212 - PSG College of Technology, 
Kavin Dev R           - 21z224 - PSG College of Technology, 
Mithilesh EN          - 21z229 - PSG College of Technology, 
Sanjay Kumaar Eswaran - 21z248 - PSG College of Technology, 
Vaikunt Ramakrishnan  - 21z266 - PSG College of Technology, 



