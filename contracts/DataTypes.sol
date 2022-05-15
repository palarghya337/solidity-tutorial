// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
/*
 * As part of this you will know different data types solidity supports.
 * There is no concept of "undefined" or "null" in solidity.
 */
contract DataTypes {
    /* 
     * Below all the veriables I have declared are state variables whose values are permanently
     * stored in a contract storage.
     */
    bool boolDataType;
    int intDataType;
    uint uintDataType;
    string stringDataType;

    function boolDefaultValue() public view returns(bool) {
        return boolDataType;
    }
    function initDefaultValue() public view returns(int) {
        return intDataType;
    }
    function uintDefaultValue() public view returns(uint) {
        return uintDataType;
    }
    function stringDefaultValue() public view returns(string memory) {
        return stringDataType;
    }
    function localVariableExample() public pure returns(string memory) {
        string memory localVar = "Here is an example of local variable.";
        return localVar;
    }
}