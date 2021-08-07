// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

import "lib/ds-test/src/test.sol";

import "./Token.sol";

contract TokenTest is DSTest {
    Degen dx;

    function setUp() public {
        dx = new Degen();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }

    function test_name() public {
        assertTrue(keccak256(abi.encodePacked(dx.name())) == keccak256(abi.encodePacked("Degen")));
    }

    function test_symbol() public {
        assertTrue(keccak256(abi.encodePacked(dx.symbol())) == keccak256(abi.encodePacked("DG")));
    }

    function test_total_supply() public {
        assertTrue(dx.totalSupply() == 1_000_000e18);
    }
 
    function test_transfer() public {
        dx.transfer(address(0x1), 1 ether);
        assertTrue(dx.balanceOf(address(0x1)) == 1 ether);
    }

}
