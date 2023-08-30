//SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TokenCreator {
    mapping(address => IERC20[]) creatorsToken;

    function updateTokenList(IERC20 _contractAddress) public
    {
        creatorsToken[msg.sender].push(IERC20(_contractAddress));
    }

    function getTokenList(address _myAddress) public view returns (IERC20[] memory)
    {
        return creatorsToken[_myAddress];
    }
    

}