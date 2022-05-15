// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

/*
 * To know more please visite below link.
 * @link https://docs.soliditylang.org/en/v0.6.12/contracts.html#visibility-and-getters
 */
contract FunctionalScope {

    Child private object = new Child();
    // Parent private object = new Child();
    /*
     * Here we can able to call the function which has "external" visibility because we
     * are calling it from outside the contract.
     */
    function externalF() public view returns(string memory) {
        return object.externalFunction();
    }
    function publicF() public view returns(string memory) {
        return object.publicFunction();
    }
   
    function internalF() public view returns(string memory) {
        // internal functions are not accessible from outside.
        // object.internalFunction();
        return object.callingInternalFunction();
    }
}

contract Parent {

    function externalFunction() external pure returns(string memory) {
        return "Example of external function.";
    }

    function publicFunction() public pure returns(string memory) {
        return "Example of public function.";
    }
    
    function internalFunction() internal pure returns(string memory) {
        return "Example of internal function.";
    }

    function privateFunction() private pure returns (string memory) {
        return "Example of private function";
    }

    function execution() public pure {
        /*
         * Below function call will fail to compile because that functions visibility is "external"
         * and we can not call the function from the same contract.
         */
        // externalFunction();
        publicFunction();
        internalFunction();
        privateFunction();
    }
}

contract Child is Parent {

    /*
     * Because visibility of externalFunction() is "external" and Child contract is the child
     * of Parent contract we can not access it from here.
     */
     /*
    function callingExternalFunction() public pure returns(string memory) {
        return externalFunction();
    }
    */
    function callingPublicFunction() public pure returns(string memory) {
        return publicFunction();
    }
    function callingInternalFunction() public pure returns(string memory) {
        return internalFunction();
    }
    /*
     * Below function will fail to compile because visibility of privateFunction() is "private"
     * an we can not call private function outside of the contrace where it is declared.
     */
     /*
    function callingPrivateFunction() public pure returns(string memory) {
        return privateFunction();
    }
    */
}