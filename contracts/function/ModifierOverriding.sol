// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract ModifierOverriding {

    Child ch = new Child();

    function addAge(uint _age) public {
        ch.setAge(_age);
    }
    function getAge() public view returns(uint) {
        return ch.getAge();
    }
}

contract Parent {

    uint internal age;
    /*
     * Function modifiers can override each other. This works in the same way as function
     * overriding (except that there is no overloading for modifiers). The virtual keyword
     * must be used on the overridden modifier and the override keyword must be used in the
     * overriding modifier:
     */
    modifier someModifier(uint _age) virtual {_;}

    function setAge(uint _age) public someModifier(_age) {
        age = _age;
    }
    function getAge() external view returns (uint) {
        return age;
    }
}

contract Child is Parent {
    modifier someModifier(uint _age) override {
        assert(_age == 10);
        _;
    }
}