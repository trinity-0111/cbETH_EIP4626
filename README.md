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
* `forge test --fork-url "ETH_MAINNET_RPC_URL" -vv` tests against mainnet