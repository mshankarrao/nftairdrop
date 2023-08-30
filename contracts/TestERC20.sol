//SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestERC20 is ERC20 {

    address private owner;

    constructor(string memory _name, string memory _symbol,uint256 _initialSupply) ERC20(_name, _symbol) {
         owner = msg.sender;
         _mint(msg.sender, _initialSupply * 10**18);
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "Caller is not the owner");
        _;
    }

    function updateOwner(address _newOwner) public onlyOwner{
        owner = _newOwner;
    }

    function airDropping(address[] memory _to, uint256 _tokenAmount) public onlyOwner {
        for(uint i = 0; i < _to.length; i++){
           transfer(_to[i], _tokenAmount * 10 ** 18);
        }
   }
}