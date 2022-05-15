// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

// To know more click https://docs.soliditylang.org/en/v0.6.12/contracts.html#view-functions
contract PureOrView {

    string data;

    constructor() public {
        data = "Example for \"view\" keyword.";
    }
    /*
     * In Solidity, a function that only reads but doesn't alter the state variables defined
     * in the contract is called a View Function . If the statements below are found in a
     * view function, the compiler will consider them as altering state variables and return
     * a warning.
     */
    function readData() public view returns(string memory) {
        return data;
    }
    /*
     * In Solidity, a function that doesn't read or modify the variables of the state is called
     * a pure function. It can only use local variables that are declared in the function and
     * the arguments that are passed to the function to compute or return a value.
     */
    function pureExample() public pure returns(string memory) {
        return "Example for \"pure\" keyword.";
    }
}