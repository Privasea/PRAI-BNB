### Privasea AI Token (PRAI) Smart Contract Documentation

#### 1. Overview
Privasea AI Token (PRAI) is an ERC-20 token contract based on Ethereum, written in Solidity. The contract inherits from OpenZeppelin's ERC20 standard contract and initializes the token's name, symbol, and total supply within its constructor. Upon deployment, tokens are automatically allocated to specified addresses according to predefined distribution ratios.

#### 2. Contract Details

##### 2.1 Contract Name
Contract Name: PrivaseaAIToken

##### 2.2 Token Information
Token Name: Privasea AI Token  
Token Symbol: PRAI  
Total Supply: 1,000,000,000 PRAI (1 billion tokens with 18 decimal places precision)

##### 2.3 Contract Dependencies
OpenZeppelin ERC20: This contract utilizes OpenZeppelin’s ERC20 standard implementation to ensure compliance with the ERC-20 standard.

##### 2.4 Constructor
Upon contract deployment, the constructor performs the following actions:
1. Initializes the token's name (Privasea AI Token) and symbol (PRAI).
2. Sets the total supply to 1,000,000,000 PRAI, multiplied by 10^18 to support 18 decimal places.
3. Defines 6 recipient addresses and their corresponding allocation ratios.
4. Mints and allocates tokens to the respective addresses based on these ratios.

##### 2.5 Token Allocation

| Address                                      | Allocation Label                        | Allocation Ratio | Allocation Amount (PRAI) |
|----------------------------------------------|-----------------------------------------|------------------|--------------------------|
| 0xe6f04184b966922d0217b9b648e498B5942D994A   | Mining and Staking                      | 35%              | 350,000,000 PRAI         |
| 0x7202c9C03A7c785162f7f5323412CF44cE5D8348   | Team Allocation                         | 13%              | 130,000,000 PRAI         |
| 0xFb6b9875A820c1cdcA61cD2ff68A7EC8Fd9bDca0   | Backer                                  | 22.5%            | 225,000,000 PRAI         |
| 0xeE4930B2aa02A887E656330962CDDbcD5a66a4b9   | Marketing and Community Development Allocation | 15%      | 150,000,000 PRAI         |
| 0xdd6462984ab6f5c90fE1855Bc6A518b0b28bB3B5   | Reserve                                 | 10.5%            | 105,000,000 PRAI         |
| 0xB6FFb2F16f5f8286382b1F5288eDF8122D457731   | Liquidity                               | 4%               | 40,000,000 PRAI          |


##### 2.6 Functionality
1. Token Minting: At the time of contract deployment, tokens are minted and allocated to specified addresses according to predefined allocation ratios.
2. ERC-20 Standard Functions: The contract inherits from OpenZeppelin’s ERC20 standard, supporting all ERC-20 standard functionalities such as transfers, balance inquiries, approvals, etc.

Corresponding Addresses:

FDN1: eth:0xe6f04184b966922d0217b9b648e498B5942D994A

FDN2: eth:0x7202c9C03A7c785162f7f5323412CF44cE5D8348

FDN3: eth:0xFb6b9875A820c1cdcA61cD2ff68A7EC8Fd9bDca0

FDN4: eth:0xeE4930B2aa02A887E656330962CDDbcD5a66a4b9

FDN5: eth:0xdd6462984ab6f5c90fE1855Bc6A518b0b28bB3B5

FDN6: eth:0xB6FFb2F16f5f8286382b1F5288eDF8122D457731
