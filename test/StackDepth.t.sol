// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {StackDepth} from "../src/StackDepth.sol";

contract StackDepthTest is Test {
    StackDepth public sut;

    function setUp() public {
        sut = new StackDepth();
    }

    function test_externalCall() public {
        uint256 n = 0;
        uint256 actual = sut.externalCall(n);
        assertEq(123, actual);
    }

    function test_internalCall() public {
        uint256 n = 0;
        uint256 actual = sut.internalCall(n);
        assertEq(123, actual);
    }

    function testFuzz_externalCall(uint256 n) public view {
        sut.externalCall(n);
    }

    function testFuzz_internalCall(uint256 n) public view {
        sut.internalCall(n);
    }
}
