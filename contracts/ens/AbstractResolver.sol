pragma solidity ^0.8.0;

abstract contract AbstractResolver {
    function supportsInterface(bytes4 _interfaceID) virtual public view returns (bool);
    function addr(bytes32 _node) virtual public view returns (address ret);
    function setAddr(bytes32 _node, address _addr) virtual public;
    function hash(bytes32 _node) virtual public view returns (bytes32 ret);
    function setHash(bytes32 _node, bytes32 _hash) virtual public;
}
