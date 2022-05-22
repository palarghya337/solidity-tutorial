// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

/*
 * For more details please visit..
 * @link https://docs.soliditylang.org/en/v0.6.12/contracts.html#function-modifiers
 */
contract Modifiers {

    int internal age;

    modifier isAgeAbove18(int _age) {
        /*
         * Use "assert(x)" if you never ever want x to be false, not in any circumstance
         * (apart from a bug in your code). Use "require(x)" if x can be false, due to e.g.
         * invalid input or a failing external component.
         */
        require(_age > 18, "Age should be more than 18");
        /*
         * The function body is inserted where the special symbol `_;` in the definition of
         * a modifier appears. This means that if the owner calls this function, the function
         * is executed and otherwise, an exception is thrown.
         */
        _;
    }

    function addAge(int _age) public isAgeAbove18(_age) {
        age = _age;
    }

    function getAge() public view returns(int) {
        return age;
    }
}