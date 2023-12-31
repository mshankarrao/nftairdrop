# nftairdrop
### NFT implementation with automatic airdop of native token whenever someone buy the NFT

## Deployed Contracts to the Avalanche FUJI Network:

### Token contract
The Token Contract which will be airdropped, the explorer link is below
https://testnet.snowtrace.io/tx/0x3a1482ce2c5d8bbbf531d60d0f52daec61adb9e0bb378b27b8a2b00e455ceebf

### NFT Contract
This is the NFT contract where all the magic happens, that is the automatic airdropping of the above tokens whenever a user buys the NFT
https://testnet.snowtrace.io/tx/0x3181907019d37e313b42288ce2a5707d127bd55f0906dfdcd8f56fcb60344008

<img src="https://trufflesuite.com/img/truffle-logo-dark.svg" width="200">

[![npm](https://img.shields.io/npm/v/truffle.svg)](https://www.npmjs.com/package/truffle)
[![npm](https://img.shields.io/npm/dm/truffle.svg)](https://www.npmjs.com/package/truffle)
[![GitHub Discussions](https://img.shields.io/static/v1?label=Join&message=Discussions&color=3fe0c5)](https://github.com/trufflesuite/truffle/discussions)
[![Coverage Status](https://coveralls.io/repos/github/trufflesuite/truffle/badge.svg)](https://coveralls.io/github/trufflesuite/truffle)
[![gitpoap badge](https://public-api.gitpoap.io/v1/repo/trufflesuite/truffle/badge)](https://www.gitpoap.io/gh/trufflesuite/truffle)

---

Truffle is a development environment, testing framework, and asset pipeline for Ethereum, aiming to make life as an Ethereum developer easier. With Truffle you get:

- Built-in smart contract compilation, linking, deployment and binary management.
- Automated contract testing with Mocha and Chai.
- Configurable build pipeline with support for custom build processes.
- Scriptable deployment & migrations framework.
- Network management for deploying to many public & private networks.
- Interactive console for direct contract communication.
- Instant rebuilding of assets during development.
- External script runner that executes scripts within a Truffle environment.

| ℹ️ **Contributors**: Please see the [Development](#development) section of this README. |
| --------------------------------------------------------------------------------------- |

### Install

```
$ npm install -g truffle
```

_Note: To avoid any strange permissions errors, we recommend using [nvm](https://github.com/nvm-sh/nvm)._

### Quick Usage

For a default set of contracts and tests, run the following within an empty project directory:

```
$ truffle init
```

From there, you can run `truffle compile`, `truffle migrate`, and `truffle test` to compile your contracts, deploy those contracts to the network, and run their associated unit tests.

Truffle comes bundled with a local development blockchain server that launches automatically when you invoke the commands above. If you'd like to [configure a more advanced development environment](https://trufflesuite.com/docs/truffle/reference/configuration) we recommend you install the blockchain server separately by running `npm install -g ganache` at the command line.

- [ganache](https://github.com/trufflesuite/ganache): a command-line version of Truffle's blockchain server.
- [ganache-ui](https://github.com/trufflesuite/ganache-ui): A GUI for the server that displays your transaction history and chain state.

### Documentation

Please see the [Official Truffle Documentation](https://trufflesuite.com/docs/) for guides, tips, and examples.

### Development

We welcome pull requests. To get started, just fork this repo, clone it locally, and run:

```shell
# Install
npm install -g yarn
yarn bootstrap

# Test
yarn test

# Adding dependencies to a package
cd packages/<truffle-package>
yarn add <npm-package> [--dev] # Use yarn
```

If you'd like to update a dependency to the same version across all packages, you might find [this utility](https://www.npmjs.com/package/lerna-update-wizard) helpful.

_Notes on project branches:_

- `master`: Stable, released version (v5)
- `beta`: Released beta version
- `develop`: Work targeting stable release (v5)
- `next`: Not currently in use

Please make pull requests against `develop`.

There is a bit more information in the [CONTRIBUTING.md](./CONTRIBUTING.md) file.

### License

[MIT](./LICENSE)
