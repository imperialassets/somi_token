const { expect } = require("chai");
const { ethers } = require("hardhat");
// const { ethers } = require("ethers");



describe("ImperialAssets Token contract", function () {

  let ImperialAssets;
  let ImpAssets;

  before(async () => {
    [deployer, per1, per2, per3, per4] = await ethers.getSigners()

    console.log("start");
    /////creating token /////////////

    ImperialAssets = await ethers.getContractFactory("ImperialAssets")


    ImpAssets = await ImperialAssets.deploy();
    
    await ImpAssets.deployed();

    console.log("ImperialAssets contract address", ImpAssets.address);

  });

  it("After Deploy check all balances contracts", async function () {
    expect(await ImpAssets.balanceOf("0x229D74445Da31b3186bCA2c0F35fE2F65bE50Ecf")).to.equal(ethers.utils.parseEther("100000000"));
    expect(await ImpAssets.balanceOf("0xDE3CD6F45513dc0e2EA2Caefa084563e97D28D92")).to.equal(ethers.utils.parseEther("100000000"));
    expect(await ImpAssets.balanceOf("0x3F2795e7BdDCc44644b131012f1fECd3A8a24b71")).to.equal(ethers.utils.parseEther("100000000"));
    expect(await ImpAssets.balanceOf("0x5d5b09cCD85975D88cD0e89B02008C00bD4Df679")).to.equal(ethers.utils.parseEther("200000000"));
    expect(await ImpAssets.balanceOf("0x15110C93a95Ab0386D7A3cBA90A837A5874C5571")).to.equal(ethers.utils.parseEther("500000000"));
  });
  

});
