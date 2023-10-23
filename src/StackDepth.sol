// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract StackDepth {
    function externalCall(uint256 n) external view returns (uint256) {
        if (n == 0) return 123;
        return this.externalCall(n - 1);
    }

    function internalCall(uint256 n) public view returns (uint256) {
        if (n == 0) return 123;
        return internalCall(n - 1);
    }
}
