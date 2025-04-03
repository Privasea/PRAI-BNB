// SPDX-License-Identifier: Apache 2
pragma solidity >=0.8.8 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PrivaseaAIToken is ERC20, ERC20Burnable, Ownable {

    error CallerNotMinter(address caller);
    
    error InvalidMinterZeroAddress();
    
    error InsufficientBalance(uint256 balance, uint256 amount);

    event NewMinter(address previousMinter, address newMinter);
    
    address public minter;
    
    uint256 public constant MAX_SUPPLY = 1_000_000_000 * 10**18; // 1 billion tokens

    modifier onlyMinter() {
        if (msg.sender != minter) {
            revert CallerNotMinter(msg.sender);
        }
        _;
    }
    

    constructor(address initialOwner) 
        ERC20("Privasea AI Token", "PRAI") 
        Ownable(initialOwner)
    {
        minter = initialOwner;
        uint256 totalSupply = 1000000000 * (10 ** 18); 

        address[6] memory addresses = [
            //address1  Add it later.,
            //address2  Add it later.,
            //address3  Add it later.,
            //address4  Add it later.,
            //address5  Add it later.,
            //address6  Add it later.
        ];

        uint256[6] memory allocations = [
            totalSupply * 35 / 100, // 35%
            totalSupply * 13 / 100, // 13%
            totalSupply * 225 / 1000, // 22.5%
            totalSupply * 15 / 100, // 15%
            totalSupply * 105 / 1000, // 10.5%
            totalSupply * 4 / 100 // 4%
        ];

        for(uint256 i=0; i < addresses.length; i++) {
            _mint(addresses[i], allocations[i]);
        }
    }
    
    function mint(address account, uint256 amount) external onlyMinter {
        // Check that we don't exceed MAX_SUPPLY
        if (totalSupply() + amount > MAX_SUPPLY) {
            revert("Exceeds maximum supply");
        }
        _mint(account, amount);
    }
    
    function setMinter(address newMinter) external onlyOwner {
        if (newMinter == address(0)) {
            revert InvalidMinterZeroAddress();
        }
        address previousMinter = minter;
        minter = newMinter;
        emit NewMinter(previousMinter, newMinter);
    }
    
    function burn(uint256 amount) public override {
        uint256 balance = balanceOf(msg.sender);
        if (balance < amount) {
            revert InsufficientBalance(balance, amount);
        }
        super.burn(amount);
    }
}
