ipfs init
xcopy "%CD%\swarm.key" "C:\Users\%USERNAME%\.ipfs" /K /D /H /Y
ipfs bootstrap rm --all
ipfs bootstrap add /ip4/115.124.117.37/tcp/4001/p2p/QmWXELAoKJsCMFoW3j6pFmXEhouwKgWiK7wN6uLyuX6ULV
ipfs bootstrap add /ip4/13.76.134.226/tcp/4001/ipfs/QmYthCYD5WFVm6coBsPRGvknGexpf9icBUpw28t18fBnib
ipfs config --json Experimental.Libp2pStreamMounting true
ipfs config --json Swarm.EnableAutoRelay true
ipfs config --json Swarm.EnableRelayHop true
