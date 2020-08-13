ipfs init
xcopy "%CD%\swarm.key" "C:\Users\%USERNAME%\.ipfs" /K /D /H /Y
ipfs bootstrap rm --all
ipfs bootstrap add /ip4/52.172.51.38/tcp/4001/ipfs/QmRdExYiDHN6VtFmYN24nCimmAMz83FQmDuZmtpnteURiq
ipfs bootstrap add /ip4/52.172.51.38/tcp/4002/ipfs/QmenpqsPquKTWbwuV48fgSYz7XhoDkgAfABEtc3xF7Jsry
ipfs bootstrap add /ip4/52.172.51.38/tcp/4003/ipfs/QmPRX8w7xng24soPJTPSWcY2LEkPyc4WfUAayiymb9Ndcu
ipfs bootstrap add /ip4/13.71.70.168/tcp/4001/ipfs/QmemdPdzwZ1VYY9xEFpiENDWqpL3crbVGT1X4TderdyYhi
ipfs bootstrap add /ip4/13.71.70.168/tcp/4002/ipfs/QmNcNqoLcAH224EekfVKX22b9dvYcK6pSYw74bfaL2P6Km
ipfs bootstrap add /ip4/13.71.70.168/tcp/4003/ipfs/QmcdaAtoDFCxY73qYqa1EuQXxP4q9ZJLk5oKD1YsLo4PvF
ipfs bootstrap add /ip4/13.71.82.252/tcp/4001/ipfs/QmeWeTW5mToMFdpvztfknRTASUy7Ldc6ohC4fyBzpfiTAj
ipfs bootstrap add /ip4/13.71.82.252/tcp/4002/ipfs/QmPTShTj5FDttPbxiMSkcm1SHFwsyCmyk6YhkDZWHmWQjt
ipfs bootstrap add /ip4/13.71.82.252/tcp/4003/ipfs/Qme4EQV4YGgtiAoTy3n1RB2sHMtW4KQq97ydnpV2Hh6npr
ipfs config --json Experimental.Libp2pStreamMounting true
ipfs config --json Swarm.EnableAutoRelay true
