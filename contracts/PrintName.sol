pragma solidity 0.6.0;

contract PrintName {

    string name;
    /*
     * Below function is to store data in the #data field
     */
    function store(string memory nameToStore) public {
        name = nameToStore;
    }

    // Below function is to retrieve the data.
    function viewData() public view returns(string memory) {
        return (string(abi.encodePacked("Hellow ", name)));
    }
}