//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    // bool hasFavouriteNumber = true;
    uint256 public favouriteNumber;
    // string favouriteNumberText = "One hundred and twenty three";
    // address myAddress = 0x674075031063D9F049E46cee1E6EB8814fBB86a2;
    // int favouriteNumberNeg = -123;
    // bytes2 favouriteBytes = "cat";

    mapping(string => uint256) public nameToFavNumber;

    People public person = People({favouriteNumber: 2, name: "Erick"});

    People[] public people;
    People[3] public fixedPeople;
    // uint32[] public favouriteNumbersList;

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    function store(uint256 _favouriteNumber) public virtual {
        favouriteNumber = _favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        People memory newPerson = People(_favouriteNumber, _name);
        people.push(newPerson);
        // people.push(People(_favouriteNumber, _name));

        nameToFavNumber[_name] = _favouriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }
}

//0xd9145CCE52D386f254917e481eB44e9943F39138