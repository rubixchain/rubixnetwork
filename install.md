# Installation

This will walk you through the way towards setting up the Rubix Environment.

### Prerequisites

-   **Java 10.0.2 JDK** - We currently support version 10.0.2. Further support will be available soon.

    Download Link: [Java](https://www.oracle.com/in/java/technologies/javase/jdk11-archive-downloads.html#license-lightbox)
    
-   **go-ipfs v0.6.0** - IPFS, a distributed file system is used for storage.

    Download Link: [IPFS](https://dist.ipfs.io/go-ipfs)
    
After installing IPFS, follow the steps mentioned to setup [Private Network](#setup-private-ipfs-network)

### Setup Private IPFS Network 
Before setting up the Private Network, make sure IPFS is set as global **PATH** for Windows.

> **NOTE** 📋 For Mac and Linux Systems, the path is automatically set as global during the time of installation.

**I. Automated Script:** Download the [script and swarm key](https://github.com/rubixchain/rubixnetwork/tree/master/setupscripts) depending on the platform.

**Windows**
1. Double click the `init.bat` file
2. Open a new terminal and run the following command to start the daemon
	```
	> ipfs daemon
	```
	
**MAC / Linux**
1. Open a terminal in the downloaded location and execute the following:
	```
	> chmod +x init.sh
	> ./init.sh
	```
2.  Open a new terminal and run the following command to start the daemon
	```
	> ipfs daemon
	```

**II. Manual Setup:**

Execute the command `ipfs init` in your terminal. This generates a unique `PeerID` for the node.

Sample Peer Identity: "QmeRAkURreUeWsZ5yovKSpNEC4U7UcAd91cYpbNhx4ovY"

1.  The IPFS Daemon should be running till the setup process is finished. To run the daemon, execute `ipfs daemon` in the terminal.
2.  Download the [Swarm Key](https://github.com/rubixchain/rubixnetwork/blob/master/setupscripts/LinScript/swarm.key) and place it in the IPFS repo directory. 
   
     **Windows:** /Users/<username\>/.ipfs/
     
     **Mac:** /Users/<username\>/.ipfs/
     
     **Linux:** /home/<username\>/.ipfs/


3.  The default bootstrap nodes should be replaced with Rubix bootstrap nodes.

     Execute the following commands in your terminal :
	```
	> ipfs bootstrap rm --all
	> ipfs bootstrap add /ip4/52.172.51.38/tcp/4001/ipfs/QmRdExYiDHN6VtFmYN24nCimmAMz83FQmDuZmtpnteURiq
	> ipfs bootstrap add /ip4/52.172.51.38/tcp/4002/ipfs/QmenpqsPquKTWbwuV48fgSYz7XhoDkgAfABEtc3xF7Jsry
	> ipfs bootstrap add /ip4/52.172.51.38/tcp/4003/ipfs/QmPRX8w7xng24soPJTPSWcY2LEkPyc4WfUAayiymb9Ndcu
	> ipfs bootstrap add /ip4/13.71.70.168/tcp/4001/ipfs/QmemdPdzwZ1VYY9xEFpiENDWqpL3crbVGT1X4TderdyYhi
	> ipfs bootstrap add /ip4/13.71.70.168/tcp/4002/ipfs/QmNcNqoLcAH224EekfVKX22b9dvYcK6pSYw74bfaL2P6Km
	> ipfs bootstrap add /ip4/13.71.70.168/tcp/4003/ipfs/QmcdaAtoDFCxY73qYqa1EuQXxP4q9ZJLk5oKD1YsLo4PvF
	> ipfs bootstrap add /ip4/13.71.82.252/tcp/4002/ipfs/QmPTShTj5FDttPbxiMSkcm1SHFwsyCmyk6YhkDZWHmWQjt
	> ipfs bootstrap add /ip4/13.71.82.252/tcp/4003/ipfs/Qme4EQV4YGgtiAoTy3n1RB2sHMtW4KQq97ydnpV2Hh6npr
	```
4.  For peers within the network to discover and communicate with each other, Auto Relay and LibP2P functionalities should be enabled.

     Do the following in your terminal:
	   ```
     > ipfs config --json Swarm.EnableAutoRelay true
     > ipfs config --json Experimental.Libp2pStreamMounting true
	 ```
     
5.  Once the above steps are finished, terminate IPFS using
    `ipfs shutdown` command in the terminal.

6.  Now, restart the daemon and check for the presence of unique fingerprint.

    > **NOTE** 📋 The nodes that have same swarm key will have same fingerprint.

IPFS Private Network Setup is Successfully Finished ✅
      
	
For more on Rubix API, visit [Rubix API Docs](https://github.com/rubixchain/rubixnetwork/blob/master/Rubix%20API.md).
