pragma solidity ^0.4.24;

contract Calculator {

    function add(uint _x, uint _y) 
        pure 
        public 
        returns (uint) {
            return _x + _y;
    }

    function sub(uint _x, uint _y)
        pure
        public
        returns (uint) {
            return _x - _y;
    }

    function mul(uint _x, uint _y) 
        pure
        public
        returns (uint) {
            return _x * _y;
    }

    function div(uint _x, uint _y)
        pure
        public
        returns (uint) {
            return _x / _y;
    }

}