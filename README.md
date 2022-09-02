# cbETH EIP_4626 View Wrapper

 > **_Mainnet address:_**  [`0x17A5B908254191d180e6BCA9A46f9c9E9E7c070a`](https://etherscan.io/address/0x17a5b908254191d180e6bca9a46f9c9e9e7c070a#readContract)


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

### Deployment
```forge create --rpc-url <your_rpc_url> --private-key <your_private_key> src/cbETHEip4626ViewWrapper.sol:cbETHEip4626ViewWrapper```

### Verification on Etherscan
```forge verify-contract --chain-id 42 --num-of-optimizations 1000000 --compiler-version v0.8.16 <the_contract_address> src/cbETHEip4626ViewWrapper.sol:cbETHEip4626ViewWrapper <your_etherscan_api_key>```