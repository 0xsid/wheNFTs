
// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;


import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract MyEpicNFT is ERC721URIStorage {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721 ("WhenFTs", "When") {
       console.log("A representation of your favorite time of day");
    }

    function mintAWhenFT() public {
        uint256 newItemId = _tokenIds.current();

        _safeMint(msg.sender, newItemId);

        _setTokenURI(newItemId, "https://jsonkeeper.com/b/P4FE");
        console.log("A WhenFT w/ ID %s has been minted to %s", newItemId, msg.sender);
        _tokenIds.increment();

    }
}

