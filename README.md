# Local development with Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

<https://book.getfoundry.sh/>

## Usage

### Build

```shell
forge build
```

### Test

```shell
forge test
```

### Format

```shell
forge fmt
```

### Gas Snapshots

```shell
forge snapshot
```

### Anvil

```shell
anvil
```

### Deploy

```shell
forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
cast <subcommand>
```

### Help

```shell
forge --help
anvil --help
cast --help
```

======================================= Demo =======================================

## deploy script with interactive private key

``` bash
forge script DeploySimpleStorage --rpc-url http://127.0.0.1:8545 --broadcast --account sinoo-anvil --sender 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
```

## Connect with contract with one agr

``` bash
cast send 0xdc64a140aa3e981100a9beca4e685f962f0cf6c9 "setNumber(uint256)" 2 --rpc-url http://127.0.0.1:8545 --account sinoo-anvil
```

## Get number

``` bash
cast call 0xdc64a140aa3e981100a9beca4e685f962f0cf6c9 "number()" 2 --rpc-url http://127.0.0.1:8545
```

## Send with many agr

``` bash
cast send 0xdc64a140aa3e981100a9beca4e685f962f0cf6c9 "pushToFixedArrayOfNumber(uint256, uint256)" 
1 2 --rpc-url http://127.0.0.1:8545 --account sinoo-anvil
```

## Get with list arr => Have to get with index

``` bash
cast call 0xdc64a140aa3e981100a9beca4e685f962f0cf6c9 "fixedArrayOfNumber(uint256)" 1 --rpc-url http://127.0.0.1:8545
```

## Deploy to Alchemy with sepolia testnet

``` bash
forge script script/DeploySimpleStorage.s.sol --rpc-url https://eth-sepolia.g.alchemy.com/v2/YjEKjFx9J2OrhbAF3s_eP --account foundry-alchemy-learn --broadcast
```

## Call with testnet

``` bash
cast call 0x25240dF1d263A5cb77839355bD93D75C5eF6065f "number()" --rpc-url https://eth-sepolia.g.alchemy.com/v2/YjEKjFx9J2OrhbAF3s_eP
```

==== Interactive env to terminal ====

``` bash
source .env
```

## After add source to reuseable

``` bash
 cast call 0x0C83B63C6db6f682a2954cdd4603d45437EF6854 "number()" --rpc-url ${SEPOLIA_RPC_URL}
```

## Verify and pushlish contract

``` bash
forge verify-contract <CONTRACT_ADDRESS> <PATH>:<CONTRACT_NAME> --rpc-url ${SEPOLIA_RPC_URL} --etherscan-api-key ${ETHERSCAN_API_KEY}
```

``` bash
forge verify-contract 0x0C83B63C6db6f682a2954cdd4603d45437EF6854 script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url ${SEPOLIA_RPC_URL} --etherscan-api-key ${ETHERSCAN_API_KEY}
```

## Config với make to run cmd

``` bash
# Test xem choco có hoạt động không
choco --version
```

``` bash
# Đóng PowerShell hiện tại và mở PowerShell mới as Administrator
# Sau đó chạy:
choco install make
```

``` bash
# Test make version (should be English now)
choco --version
```

``` bash
# CONFIG GIT BASH
# Refresh PATH
export PATH="/c/ProgramData/chocolatey/bin:$PATH"

# Test make
make --version

# Test Makefile (should show English error)
make deploy-sepolia
```
