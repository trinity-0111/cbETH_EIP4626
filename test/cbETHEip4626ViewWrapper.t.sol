// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/cbETHEip4626ViewWrapper.sol";

contract cbETHEip4626ViewWrapperTest is Test {
    cbETHEip4626ViewWrapper public wrapper;
    function setUp() public {
       wrapper = new cbETHEip4626ViewWrapper();
    }

    function testtotalAssets() public {
        uint256 total = wrapper.totalAssets();
        assertGe(total, 1);
    }
    function testConvertToShares() public {
        uint256 shares = wrapper.convertToShares(1000000);
        assertLe(shares, 1000000);
        assertGe(shares, 1);
    }

    function testConvertToAssets() public {
        uint256 assets = wrapper.convertToAssets(1000000);
        assertGe(assets, 1000000);
        assertLe(assets, 1000000000);
    }
}
