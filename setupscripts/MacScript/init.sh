user=$(whoami)
IPFS_PATH=/Users/$user/.ipfs ipfs init
cp -R swarm.key /Users/$user/.ipfs
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap rm --all
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap add /ip4/115.124.117.37/tcp/4001/p2p/QmWXELAoKJsCMFoW3j6pFmXEhouwKgWiK7wN6uLyuX6ULV
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap add /ip4/13.76.134.226/tcp/4001/ipfs/QmYthCYD5WFVm6coBsPRGvknGexpf9icBUpw28t18fBnib
IPFS_PATH=/Users/$user/.ipfs ipfs config --json Experimental.Libp2pStreamMounting true
IPFS_PATH=/Users/$user/.ipfs ipfs config --json Swarm.EnableAutoRelay true
IPFS_PATH=/Users/$user/.ipfs ipfs config --json Swarm.EnableRelayHop true
