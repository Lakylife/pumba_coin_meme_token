// SPDX-License-Identifier: MIT
/**
 *
 *
 *        ______            __       __        __         
 *       / ____/____   ____/ /___   / /____ _ / /__ __  __
 *      / /    / __ \ / __  // _ \ / // __ `// //_// / / /
 *     / /___ / /_/ // /_/ //  __// // /_/ // ,<  / /_/ / 
 *     \____/ \____/ \__,_/ \___//_/ \__,_//_/|_| \__, /  
 *                                         /____/  
 *
 *                   2023 LICENCE (JAVA CLASS)
 *
 *    Tento kód spadá pod licenci programátora a autora kódu.
 *                  Více informací najdete na
 *                      www.tvujpartak.cz
 *                       www.codelaky.cz
 *
 *  E-mail: lukas.helebrandt@gmail.com   |    Tel: +420 721 770 063
 * 
 * @author Lukáš Helebrandt

       https://t.me/pumbocoin
       Twitter: @pumbocoin
    https://pumbo.space
                                                                                                         

*/

pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Pumbo is ERC20, ERC20Burnable, ERC20Permit, ERC20Votes, Ownable {
    constructor() ERC20("Pumbo", "PUM") ERC20Permit("Pumbo") {
        _mint(msg.sender, 100000000000000 * 10 ** decimals());
    }

    // The following functions are overrides required by Solidity.

    function _afterTokenTransfer(address from, address to, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._burn(account, amount);
    }
}