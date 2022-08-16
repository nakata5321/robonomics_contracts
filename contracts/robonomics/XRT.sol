pragma solidity ^0.8.0;

import './ERC20Mintable.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/extensions/ERC20Burnable.sol';
import './ERC20Detailed.sol';

contract XRT is ERC20Mintable, ERC20Burnable, ERC20Detailed {
    constructor(uint256 _initial_supply) public ERC20Detailed("Robonomics", "XRT", 9) {
        _mint(msg.sender, _initial_supply);
    }
}
