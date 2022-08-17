pragma solidity ^0.8.0;

import './ERC20Mintable.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/extensions/ERC20Burnable.sol';

abstract contract XRT is ERC20Mintable, ERC20Burnable {
    string private _name;
    string private _symbol;
    uint8 private _decimals;

    constructor(uint256 _initial_supply)  {
        _name = "Robonomics";
        _symbol = "XRT";
        _decimals = 9;

        _mint(msg.sender, _initial_supply);
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public override view returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public override view returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5,05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public override view returns (uint8) {
        return _decimals;
    }

}
