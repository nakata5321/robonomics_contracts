pragma solidity ^0.8.0;

/**
 * @dev Observing network contract interface
 */
abstract contract IValidator {
    /**
     * @dev Be sure than address is really validator
     * @return true when validator address in argument
     */
    function isValidator(address _validator) virtual external returns (bool);
}
