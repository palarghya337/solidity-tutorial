// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

/*
 * For more details please visit here.
 * @link https://docs.soliditylang.org/en/v0.6.12/contracts.html#getter-functions
 */
contract Getter {

    DataStorage private dStorage = new DataStorage();

    function getData() public view returns(string memory) {
        return dStorage.data();
    }
    function getNumbers() public view returns(int) {
        return dStorage.numbers(0);
    }
}

contract DataStorage {
    /*
     * The compiler automatically creates getter functions for all public state variables.
     */
    string public data;
    /*
     * For public array state variables, the generated getter method will return data from
     * that array. It will not return all the data present in the array, this is to reduce
     * the cost of gas. If you want to return all the arrays then need to create a function.
     */
    int[] public numbers;

    constructor() public {
        numbers[0] = 1;
        numbers[1] = 2;
    }

    function getNumbers() public view returns(int[] memory) {
        return numbers;
    }
}