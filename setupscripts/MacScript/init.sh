user=$(whoami)
IPFS_PATH=/Users/$user/.ipfs ipfs init
cp -R swarm.key /Users/$user/.ipfs
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap rm --all
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap add /ip4/183.82.0.114/tcp/4001/ipfs/QmcjERi3TqKfLdQp4ViSPMyfGj9oxWKZRAprkppxQc2uMm
IPFS_PATH=/Users/$user/.ipfs ipfs config --json Experimental.Libp2pStreamMounting true
IPFS_PATH=/Users/$user/.ipfs ipfs config --json Swarm.EnableAutoRelay true
IPFS_PATH=/Users/$user/.ipfs ipfs config --json Swarm.EnableRelayHop true
