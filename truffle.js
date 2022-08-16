const Web3 = require("web3");
const HDWalletProvider = require("@truffle/hdwallet-provider");

Web3.providers.HttpProvider.prototype.sendAsync = Web3.providers.HttpProvider.prototype.send
const provider = new Web3.providers.HttpProvider('https://proxy.devnet.neonlabs.org/solana');

const privateKey = 'da9599a52a3e8cc1ef4abfc6b892c7e01a4eeb67311f807c68b0fea6b6e10822'; // Specify your private key here

module.exports = {
    networks: {
        neonlabs: {
            provider: () => {
                return new HDWalletProvider(
                    privateKey,
                    provider,
                );
            },
            from: '0x429F82471527bA521745C18f4E0E12EDf7cAe4C9', // Specify public key corresponding to private key defined above
            network_id: '245022926',
            networkCheckTimeout: 999999
       }
    },
    compilers: {
            solc: {
                     version: "^0.8.0"

            }
    }
  };
