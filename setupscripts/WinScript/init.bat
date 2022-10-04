set Path=%PATH%;C:\Rubix Setup\go-ipfs
timeout 10
ipfs init
xcopy "%CD%\swarm.key" "C:\Users\%USERNAME%\.ipfs" 
ipfs bootstrap rm --all
ipfs bootstrap add /ip4/115.124.117.37/tcp/4001/p2p/QmWXELAoKJsCMFoW3j6pFmXEhouwKgWiK7wN6uLyuX6ULV
ipfs bootstrap add /ip4/13.76.134.226/tcp/4001/ipfs/QmYthCYD5WFVm6coBsPRGvknGexpf9icBUpw28t18fBnib
ipfs bootstrap add /ip4/115.124.117.37/tcp/4001/p2p/QmWXELAoKJsCMFoW3j6pFmXEhouwKgWiK7wN6uLyuX6ULV
ipfs bootstrap add /ip4/13.76.134.226/tcp/4001/ipfs/QmYthCYD5WFVm6coBsPRGvknGexpf9icBUpw28t18fBnib
ipfs bootstrap add /ip4/20.49.10.84/tcp/4001/p2p/QmPT9U9r2nxGWdxvpyToyxW6N1yq5MhPKxjbhrWiyFykzC
ipfs bootstrap add /ip4/20.56.12.246/tcp/4001/p2p/QmZe3YEc4Rk6KLNT7ik9H4MJLWGdE9k99ogUmg1B8dejYM
ipfs bootstrap add /ip4/20.197.5.172/tcp/4001/p2p/QmQg83H3WxBdyS6qB59kMafwV1Ez1Rgnx8oDwws9qjZZPg
ipfs bootstrap add /ip4/20.46.193.207/tcp/4001/p2p/QmPisfmUZBw6PwWhxG6unicmE3uFEmdNgaUYZ8vJLffYs3
ipfs bootstrap add /ip4/20.197.7.114/tcp/4001/p2p/QmToQboyrMKfz5Tvt3Worr96uEDFM97EYZsZPnobk44QBd
ipfs bootstrap add /ip4/20.82.115.34/tcp/4001/p2p/QmXiK7opu67VBcppGMsbHrivEt4SQTJw8K2gLUMEqzp5Hg
ipfs bootstrap add /ip4/52.139.152.212/tcp/4001/p2p/QmTF8pjo3TEZyYSWVgtxEXaE75Vfwnm4VkJKE6eSRJEswW
ipfs config --json Experimental.Libp2pStreamMounting true
ipfs config --json Swarm.EnableAutoRelay true
ipfs config --json Swarm.EnableRelayHop true
exit 
