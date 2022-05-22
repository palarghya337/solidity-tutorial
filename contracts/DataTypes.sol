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
    /*
     * This method can accept only boolean data i.e. either true or false.
     */
    function boolDefaultValue(bool _boolData) internal {
        boolDataType = _boolData;
    }
    /*
     * This method can accept signed integer data.
     */
    function initDefaultValue(int _intDataType) internal {
        intDataType = _intDataType;
    }
    /*
     * This method can accept unsigned integer data types.
     */
    function uintDefaultValue(uint _uintDataType) internal {
        uintDataType = _uintDataType;
    }
    /*
     * This method can accept string data.
     */
    function stringDefaultValue(string memory _stringDataType) internal {
        stringDataType = _stringDataType;
    }

    function init() public {
        boolDefaultValue(true);
        initDefaultValue(2**255 - 1);
        uintDefaultValue(2**256 - 1);
        stringDefaultValue("some data");
    }
    function DataTypeExamples() public view returns(bool, int, uint, string memory) {
        return (boolDataType, intDataType, uintDataType, stringDataType);
    }
}