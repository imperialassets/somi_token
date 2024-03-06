// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ImperialAssets is ERC20, Ownable{
   
    constructor () ERC20("ImperialAssets", "SOMI") {

        _mint(0xe3448A737eccE0B0d9E76FE58a1401b299D316F4,100_000_000 ether ); // Community And Partnerships: 10%
        _mint(0x5d98dfc086A640BB2fC1047bbf03277A863935f1,100_000_000 ether ); // Team And Advisors: 10%
        _mint(0x8258d546eB357833993610fC92dAa43cC053A8a0, 100_000_000 ether ); // Initial Token Sale: 10%

        _mint(0x7aFF4E28051617aea41114027E4F6adB5556b6b8, 200_000_000 ether); // Governance: 20%
        _mint(0xADdB1f9C9459E2C1CE5A76b8DDA09496faEf0044, 500_000_000 ether); // Reserve Fund:50%

// 1. 100,000,000 (1억개) 주소입니다.

// 0xe3448A737eccE0B0d9E76FE58a1401b299D316F4

// 2. 100,000,000 (1억개) 주소입니다.

// 0x5d98dfc086A640BB2fC1047bbf03277A863935f1

// 3. 500,000,000 (5억개) 주소입니다.

// 0xADdB1f9C9459E2C1CE5A76b8DDA09496faEf0044

// 4. 200,000,000 (2억개) 주소입니다.

// 0x7aFF4E28051617aea41114027E4F6adB5556b6b8

// 5. 100,000,000 (1억개) 주소입니다.

// 0x8258d546eB357833993610fC92dAa43cC053A8a0




    // _mint(0x59cD4273171A2976c5a893a17576883Ef6C2122e, 100_000_000 ether); // Community And Partnerships: 10%
  
    // _mint(0xE9a893E053E92C57a36Ad59C730b50510f753d62, 100_000_000 ether); // Team And Advisors: 10%

    // _mint(0x185106f270572b899Ea9981667522AfB5dbF7eE1, 100_000_000 ether); // Initial Token Sale: 10%
    // // _mint(0x3F2795e7BdDCc44644b131012f1fECd3A8a24b71, 100_000_000 ether); // Initial Token Sale: 10%

    // _mint(0x623c0B8bb362b217d7039fFd28b8b2d497759e34, 200_000_000 ether); // Governance: 20%

    // _mint(0x40A71cD7E99cf259f512B07EF9ba5e9604C87277, 500_000_000 ether); // Reserve Fund:50%

    }
    
    function totalSupply() public pure override returns (uint256) {
        return 1_000_000_000 ether;
    }

}
