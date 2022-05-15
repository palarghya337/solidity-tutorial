// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract VariableScope {

    Child ch = new Child();

    function showInternalData() public view returns(string memory) {
        return ch.data();
    }
    function showPublicData() public view returns(string memory) {
        // automatic getter function generated for public state variable.
        return ch.publicData();
    }
    /*
     * If you uncomment below function and try to compile, it will throw exception because the
     * function is doing invalid call because field \"internalData\" is not accissible
     * from outside the contract.
     */
    /*
    function invalidFunction() public view returns(string memory) {
        return ch.internalData();
    }
    */
}

contract Parent {

    /*
     * Declaring public variable, public state variables can be accessed internally
     * as well as via messages. For a public state variable, an automatic getter
     * function is generated.
     */
    string public publicData;
    /*
     * Decclaring internal variable, internal state variables can be accessed only
     * internally from the current contract or contract deriving from it without using this.
     */
    string internal internalData;

    constructor() internal {
        publicData = "This is public data.";
        internalData = "This is internalData.";
    }
}

contract Child is Parent {

    function data() public view returns(string memory) {
        // below we can directly access internal variable from its parent contract.
        return internalData;
    }
}