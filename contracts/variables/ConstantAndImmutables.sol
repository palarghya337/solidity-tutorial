// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

/*
 * For more details please visit.
 * @link https://docs.soliditylang.org/en/v0.6.12/contracts.html#constant-and-immutable-state-variables
 */
contract ConstantAndImmutables {

    uint constant intConstant = 32;
    uint immutable intImmutable;
    bool immutable boolImmutable = true;

    constructor() public {
        /*
         * We can not assign constant variable under constructor, we can only assign value
         * while declaring the constant. Hence, if you add below line then it will throw
         * compilation error.
         */
        // intConstant = 32**22 + 8;

        /*
         * Variables declared as immutable are a bit less restricted than those declared as
         * constant: Immutable variables can be assigned an arbitrary value in the constructor
         * of the contract or at the point of their declaration. They cannot be read during
         * construction time and can only be assigned once.
         */
        intImmutable = 1;
    }

}