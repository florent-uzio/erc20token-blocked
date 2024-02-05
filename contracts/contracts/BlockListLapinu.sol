// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract BlockListLapinu is Ownable {
    mapping(address => bool) isBlocked;

    constructor(address initialOwner) Ownable(initialOwner) {}

    function blockAddress(address _address) internal {
        isBlocked[_address] = true;
    }

    function unBlockAddress(address _address) internal {
        // Requirement
        require(isBlocked[_address] = true, "Address is not blocked");

        // Unblock it
        isBlocked[_address] = false;
    }
}
