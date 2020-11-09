ipfs init
xcopy "%CD%\swarm.key" "C:\Users\%USERNAME%\.ipfs" /K /D /H /Y
ipfs bootstrap rm --all
ipfs bootstrap add /ip4/183.82.0.114/tcp/4001/ipfs/QmcjERi3TqKfLdQp4ViSPMyfGj9oxWKZRAprkppxQc2uMm
ipfs config --json Experimental.Libp2pStreamMounting true
ipfs config --json Swarm.EnableAutoRelay true
ipfs config --json Swarm.EnableRelayHop true
