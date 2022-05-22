// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

/*
 * For more details please visit-
 * https://docs.soliditylang.org/en/v0.6.12/contracts.html#function-overloading
 */
contract FunctionOverloading {

    /*
     * As part of this function we are adding "_value" with 10 and returns the result.
     */
    function addition(uint _value) internal pure returns(uint) {
        return addition(_value, 10);
    }
    /*
     * As part of this function we are adding "_value1" with "_value2" and returns the result.
     */
    function addition(uint _value1, uint _value2) internal pure returns(uint) {
        return _value1 + _value2;
    }

    function overloadingExample(bool _data) internal pure returns(bool) {
        return _data;
    }

    function overloadingExample(uint8 _data) internal pure returns(string memory) {
        _data = _data + 1;
        return "inside overloadingExample(uint8 _data) function.";
    }

    function overloadingExample(uint256 _data) internal pure returns(string memory) {
        _data = _data + 1;
        return "inside overloadingExample(uint256 _data) function.";
    }

    function example() public pure returns(string memory, bool) {
        return (overloadingExample(uint256(50)), overloadingExample(true));
    }
}