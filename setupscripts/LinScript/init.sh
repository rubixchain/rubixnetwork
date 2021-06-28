user=$(whoami)
IPFS_PATH=/home/$user/.ipfs ipfs init
cp -R swarm.key /home/$user/.ipfs
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap rm --all 
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap add /ip4/183.82.0.114/tcp/4001/ipfs/QmcjERi3TqKfLdQp4ViSPMyfGj9oxWKZRAprkppxQc2uMm
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap add /ip4/13.76.134.226/tcp/4001/ipfs/QmYthCYD5WFVm6coBsPRGvknGexpf9icBUpw28t18fBnib
IPFS_PATH=/home/$user/.ipfs ipfs config --json Experimental.Libp2pStreamMounting true
IPFS_PATH=/home/$user/.ipfs ipfs config --json Swarm.EnableAutoRelay true
IPFS_PATH=/home/$user/.ipfs ipfs config --json Swarm.EnableRelayHop true
