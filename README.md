### Privasea AI Token (PRAI) Smart Contract Documentation

#### 1. Overview
Privasea AI Token (PRAI) is an ERC-20 token contract based on BNB chain, written in Solidity. The contract inherits from OpenZeppelin's ERC20 standard contract and initializes the token's name, symbol, and total supply within its constructor. Upon deployment, tokens are automatically allocated to specified addresses according to predefined distribution ratios.

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

| Address                    | Allocation Label                        | Allocation Ratio | Allocation Amount (PRAI) |
|----------------------------|-----------------------------------------|------------------|--------------------------|
| 0x803aB4F88146D1596f5eae2aE05191a51596b5FD   | Mining and Staking                      | 35%              | 350,000,000 PRAI         |
| 0x153aa8CF06B287bb7438B099B3874bD9Fec33A69  | Team Allocation                         | 13%              | 130,000,000 PRAI         |
| 0x89Ce1F07F31f4E81e050D5a4763441ef5C39F53A   | Backer                                  | 22.5%            | 225,000,000 PRAI         |
| 0x2bA8b713671b3f051612F3219Dd6bD88542Ee021  | Marketing and Community Development Allocation | 15%       | 150,000,000 PRAI         |
| 0xBE5DF4c00702e1b6964718D251f44b03CD56F828   | Reserve                                 | 10.5%            | 105,000,000 PRAI         |
| 0x19D7815045592C9b3030DB60992D65b22C419bC2  | Liquidity                               | 4%               | 40,000,000 PRAI          |


##### 2.6 Functionality
1. Token Minting: At the time of contract deployment, tokens are minted and allocated to specified addresses according to predefined allocation ratios.
2. ERC-20 Standard Functions: The contract inherits from OpenZeppelin’s ERC20 standard, supporting all ERC-20 standard functionalities such as transfers, balance inquiries, approvals, etc.

Corresponding Addresses:

FDN1: 0x803aB4F88146D1596f5eae2aE05191a51596b5FD

FDN2: 0x153aa8CF06B287bb7438B099B3874bD9Fec33A69

FDN3: 0x89Ce1F07F31f4E81e050D5a4763441ef5C39F53A

FDN4:  0x2bA8b713671b3f051612F3219Dd6bD88542Ee021

FDN5: 0xBE5DF4c00702e1b6964718D251f44b03CD56F828

FDN6: 0x19D7815045592C9b3030DB60992D65b22C419bC2

#### 3. wormhole Burn-and-Mint Mode＃
Tokens integrated with NttManager in burning mode require the following two functions to be present:

burn(uint256 amount)

mint(address account, uint256 amount)

These functions aren't part of the standard ERC-20 interface. The INttToken interface documents the required functions and convenience methods, errors, and events.

https://github.com/wormhole-foundation/native-token-transfers/blob/main/evm/src/interfaces/INttToken.sol
