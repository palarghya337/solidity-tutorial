pragma solidity 0.6.0;
pragma experimental ABIEncoderV2;

import "./Employee.sol";

contract Mapping {

    Employee employee;
    mapping(int => Employee) public employeeMapping;

    function addEmployee(string memory name, int id, uint256 age) public {
        employee = Employee({name: name, id: id, age: age});
        employeeMapping[id] = employee;
    }

    function display() public view returns(Employee memory) {
        return employee;
    }

}