// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract ViewAndPure {

    uint8 uint8Data;

    /*
     * If you uncomment below function it will fail to compile because we have declared
     * "view" in the signature. The functions can be declared view in which case they
     * promise not to modify the state.
     */
     /*
    function invalidViewFunction(uint8 _data) public view {
        uint8Data = _data;
    }
    */
    /*
     * Below function we are not modifying any state so below is valid.
     */
    function validViewFunction() public view returns(uint8) {
        return uint8Data;
    }
    /*
     * Functions can be declared pure in which case they promise not to read from or modify
     * the state.
     */
    function pureExample() public pure returns(string memory) {
        return "Here is the example of \"pure\" keyword";
    }
    /*
     * If you uncomment below function you will see compilation error because below function
     * is not valid because we are reading state variable.
     */
    /*funtion invalidPureFunctionExample() public pure returns(uint8) {
        return uint8Data;
    }*/
}