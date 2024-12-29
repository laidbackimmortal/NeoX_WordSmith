// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MemeCoin is ERC20 {

    constructor() ERC20("TheMythicToken", "$TMT$") {
        _mint(address(this), 100000000000 * 10**18); // Mint tokens to the contract for distribution
    }

    // Function to mint tokens (accessible to anyone)
    function mintTokens(uint256 amount) external {
        _mint(msg.sender, amount);
    }

    // Function to claim tokens (no restrictions on the number of claims)
    function claimInitialTokens() external {
        uint256 initialAmount = 1000 * 10**18; // 1000 tokens
        _transfer(address(this), msg.sender, initialAmount);
    }
}
