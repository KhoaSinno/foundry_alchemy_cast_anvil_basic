-include .env

deploy-sepolia:
	@forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url ${SEPOLIA_RPC_URL} --account foundry-alchemy-learn --broadcast