// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Returns {

    /*
     * We can return multiple values.
     */
    function addAndSubstract(uint _value1, uint _value2) public pure
    returns(uint addition, uint substraction) {

        return ((_value1 + _value2) , (_value1 - _value2));
    }

    function addAndSubstract2(uint _value1, uint _value2) public pure
    returns(uint addition, uint substraction) {

        addition = _value1 + _value2;
        substraction = _value1 - _value2;
    }
}