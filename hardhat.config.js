require("@nomiclabs/hardhat-waffle");
require('hardhat-abi-exporter');
require('dotenv').config({path: __dirname+'/.env'})
require("@nomiclabs/hardhat-etherscan");
require('hardhat-contract-sizer');
require('hardhat-gas-reporter');
require("dotenv").config({ path: ".env" });
require('solidity-coverage');
const ethers = require("ethers");

const QUICKNODE_HTTP_URL = process.env.Mainnet;

const PRIVATE_KEY = process.env.PRIVATE_KEY;

const ETHERSCAN_KEY = process.env.ETHERSCAN_KEY;
console.log(QUICKNODE_HTTP_URL)
module.exports = {
  solidity: {
    compilers: [{
      version: "0.8.20",
      settings: {
        optimizer: {
          enabled: true,
          runs: 1000,
        },
      },
    },
    {
      version: "0.8.9",
      settings: {
        optimizer: {
          enabled: true,
          runs: 1000,
        },
      },
    }]},


  networks: {
    hardhat: {
      chainId: 56,
      gasPrice: "auto",
      forking: {
        url: 'https://rpc.ankr.com/bsc',
      }
    }, 
    // goerli: {
    //   url:`https://eth-goerli.g.alchemy.com/v2/${process.env.ALCHEMY_API}`,
    //   accounts: [`0x${process.env.PRIVATE_KEY}`],
    // },
    // polygon: {
    //   url:``,
    //   accounts: [`0x${process.env.PRIVATE_KEY}`],
    // },
    mainnet: {
      url: 'https://rpc.ankr.com/bsc',
      accounts: [PRIVATE_KEY],
      gasPrice: "auto",
    },
  },

  etherscan: {
    apiKey: ETHERSCAN_KEY,
  },
};

// npx hardhat verify --network mainnet 0xfB991Fa298B5899bc605FC4dA972d5cA582A75e4

