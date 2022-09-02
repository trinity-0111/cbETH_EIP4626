# cbETH EIP_4626 View Wrapper

EIP_4626 specifications can be found [here](https://eips.ethereum.org/EIPS/eip-4626#specification).
This contract wraps [cbETH](https://etherscan.io/token/0xBe9895146f7AF43049ca1c1AE358B0541Ea49704#code) with EIP_4626 view specifications. 

The wrapper does not include any `deposit`, `withdraw`, `redeem`, `mint` related write and read functions as they are all restricted to be only accessible by Coinbase.

## Specifications
```ml
├─ asset — "The address of the underlying token used for the Vault for accounting, depositing, and withdrawing."
├─ totalAssets — "Total amount of the underlying asset that is “managed” by Vault."
├─ convertToShares — "The amount of shares that the Vault would exchange for the amount of assets provided, in an ideal scenario where all the conditions are met."
├─ convertToAssets — "The amount of assets that the Vault would exchange for the amount of shares provided, in an ideal scenario where all the conditions are met."
```

## Development
* `forge compile`
* `forge test --fork-url <your_eth_mainnet_rpc_url> -vv` tests against mainnet

## Deployment and Verification
The code and commands below are tested on [Ropsten](https://ropsten.etherscan.io/address/0xa63510379fafa2757ed5d901bc14deedcb6c5a95#code).

> **Warning**  
>  You won't be able to read methods on Ropsten since the cbETH address is hardcoded to the Ethereum cbETH address. It is just a demonstration for the deployment and verification commands. 

### Deploy
```forge create --rpc-url <your_rpc_url> --private-key <your_private_key> src/cbETHEip4626ViewWrapper.sol:cbETHEip4626ViewWrapper```

### Verify on Etherscan
```forge verify-contract --chain-id 42 --num-of-optimizations 1000000 --compiler-version v0.8.16 <the_contract_address> src/cbETHEip4626ViewWrapper.sol:cbETHEip4626ViewWrapper <your_etherscan_api_key>```