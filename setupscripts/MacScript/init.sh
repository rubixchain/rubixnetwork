user=$(whoami)
IPFS_PATH=/Users/$user/.ipfs ipfs init
cp -R swarm.key /Users/$user/.ipfs
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap rm --all
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap add /ip4/115.124.117.37/tcp/4001/p2p/QmWXELAoKJsCMFoW3j6pFmXEhouwKgWiK7wN6uLyuX6ULV
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap add /ip4/13.76.134.226/tcp/4001/ipfs/QmYthCYD5WFVm6coBsPRGvknGexpf9icBUpw28t18fBnib
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap add /ip4/20.49.10.84/tcp/4001/p2p/QmPT9U9r2nxGWdxvpyToyxW6N1yq5MhPKxjbhrWiyFykzC
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap add /ip4/20.56.12.246/tcp/4001/p2p/QmZe3YEc4Rk6KLNT7ik9H4MJLWGdE9k99ogUmg1B8dejYM
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap add /ip4/20.197.5.172/tcp/4001/p2p/QmQg83H3WxBdyS6qB59kMafwV1Ez1Rgnx8oDwws9qjZZPg
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap add /ip4/20.46.193.207/tcp/4001/p2p/QmPisfmUZBw6PwWhxG6unicmE3uFEmdNgaUYZ8vJLffYs3
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap add /ip4/20.197.7.114/tcp/4001/p2p/QmToQboyrMKfz5Tvt3Worr96uEDFM97EYZsZPnobk44QBd
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap add /ip4/20.82.115.34/tcp/4001/p2p/QmXiK7opu67VBcppGMsbHrivEt4SQTJw8K2gLUMEqzp5Hg
IPFS_PATH=/Users/$user/.ipfs ipfs bootstrap add /ip4/52.139.152.212/tcp/4001/p2p/QmTF8pjo3TEZyYSWVgtxEXaE75Vfwnm4VkJKE6eSRJEswW
IPFS_PATH=/Users/$user/.ipfs ipfs config --json Experimental.Libp2pStreamMounting true
IPFS_PATH=/Users/$user/.ipfs ipfs config --json Swarm.EnableAutoRelay true
IPFS_PATH=/Users/$user/.ipfs ipfs config --json Swarm.EnableRelayHop true
