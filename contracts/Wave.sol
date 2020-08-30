pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Capped.sol";

contract Wave is ERC20Detailed, ERC20Capped, ERC20Pausable {
    uint8 public constant DECIMALS = 6;
    uint256 public constant INITIAL_SUPPLY = 44719917.037494 * (10**uint256(DECIMALS));
    uint256 public constant MAX_SUPPLY = 175000000 * (10**uint256(DECIMALS));
    constructor()
        public
        ERC20Detailed("Wave", "WAE", DECIMALS)
        ERC20Capped(MAX_SUPPLY)
        ERC20Pausable()
    {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}