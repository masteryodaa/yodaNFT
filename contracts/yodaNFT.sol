// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0<0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract yodaNFT is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIds;

    constructor() ERC721("Yoda NFT", "YODA"){}

    function mintNFT(address recipient, string memory tokenURI) public onlyOwner returns (uint) {
        _tokenIds.increment();
        uint newId = _tokenIds.current();
        _mint(recipient, newId);
        _setTokenURI(newId, tokenURI);
        return newId;
    }

}