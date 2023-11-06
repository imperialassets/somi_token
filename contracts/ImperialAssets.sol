// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ImperialAssets is ERC20, Ownable{
   
    constructor () ERC20("ImperialAssets", "SOMI") {

    _mint(0x229D74445Da31b3186bCA2c0F35fE2F65bE50Ecf, 100_000_000 ether); // Community And Partnerships: 10%
  
    _mint(0xDE3CD6F45513dc0e2EA2Caefa084563e97D28D92, 100_000_000 ether); // Team And Advisors: 10%

    _mint(0x3F2795e7BdDCc44644b131012f1fECd3A8a24b71, 100_000_000 ether); // Initial Token Sale: 10%

    _mint(0x5d5b09cCD85975D88cD0e89B02008C00bD4Df679, 200_000_000 ether); // Governance: 20%

    _mint(0x15110C93a95Ab0386D7A3cBA90A837A5874C5571, 500_000_000 ether); // Reserve Fund:50%

    }
     
    function totalSupply() public pure override returns (uint256) {
        return 1_000_000_000 ether;
    }
}
