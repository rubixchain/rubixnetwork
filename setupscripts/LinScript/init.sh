user=$(whoami)
IPFS_PATH=/home/$user/.ipfs ipfs init
cp -R swarm.key /home/$user/.ipfs
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap rm --all 
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap add /ip4/52.172.51.38/tcp/4001/ipfs/QmRdExYiDHN6VtFmYN24nCimmAMz83FQmDuZmtpnteURiq
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap add /ip4/52.172.51.38/tcp/4002/ipfs/QmenpqsPquKTWbwuV48fgSYz7XhoDkgAfABEtc3xF7Jsry
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap add /ip4/52.172.51.38/tcp/4003/ipfs/QmPRX8w7xng24soPJTPSWcY2LEkPyc4WfUAayiymb9Ndcu
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap add /ip4/13.71.70.168/tcp/4001/ipfs/QmemdPdzwZ1VYY9xEFpiENDWqpL3crbVGT1X4TderdyYhi
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap add /ip4/13.71.70.168/tcp/4002/ipfs/QmNcNqoLcAH224EekfVKX22b9dvYcK6pSYw74bfaL2P6Km
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap add /ip4/13.71.70.168/tcp/4003/ipfs/QmcdaAtoDFCxY73qYqa1EuQXxP4q9ZJLk5oKD1YsLo4PvF
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap add /ip4/13.71.82.252/tcp/4001/ipfs/QmeWeTW5mToMFdpvztfknRTASUy7Ldc6ohC4fyBzpfiTAj
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap add /ip4/13.71.82.252/tcp/4002/ipfs/QmPTShTj5FDttPbxiMSkcm1SHFwsyCmyk6YhkDZWHmWQjt
IPFS_PATH=/home/$user/.ipfs ipfs bootstrap add /ip4/13.71.82.252/tcp/4003/ipfs/Qme4EQV4YGgtiAoTy3n1RB2sHMtW4KQq97ydnpV2Hh6npr
IPFS_PATH=/home/$user/.ipfs ipfs config --json Experimental.Libp2pStreamMounting true
IPFS_PATH=/home/$user/.ipfs ipfs config --json Swarm.EnableAutoRelay true


