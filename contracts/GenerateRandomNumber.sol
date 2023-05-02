// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract RandomNumberGenerator {
    // Generate a random number between min and max (inclusive)
    function generateRandomNumber(
        uint256 min,
        uint256 max
    ) public view returns (uint256) {
        require(min <= max, "Invalid range");
        uint256 random = uint256(
            keccak256(abi.encodePacked(block.timestamp, msg.sender))
        ) % (max - min + 1);
        uint randomNumber = random + min;

        return randomNumber;
    }
}
