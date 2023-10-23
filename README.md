Solidity/EVM puzzle #1
https://twitter.com/atiselsts_eth/status/1716361342083342454

Besides testing with `forge test`, manual testing is also possible:

1. Run `anvil`, copy the first private key, which by default is 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
2. Run `forge create StackDepth --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80`
3. Copy the deployment address (e.g. 0x5FbDB2315678afecb367f032d93F642f64180aa3)
4. Run `cast call 0x5FbDB2315678afecb367f032d93F642f64180aa3 "externalCall(uint256 n)" 429`
5. Run `cast call 0x5FbDB2315678afecb367f032d93F642f64180aa3 "externalCall(uint256 n)" 430`
6. Run `cast call 0x5FbDB2315678afecb367f032d93F642f64180aa3 "internalCall(uint256 n)" 338`
7. Run `cast call 0x5FbDB2315678afecb367f032d93F642f64180aa3 "internalCall(uint256 n)" 339`
