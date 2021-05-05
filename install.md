# Installation

This will walk you through the way towards setting up the Rubix Environment.

### Prerequisites

-   **Java 11 JDK** - We currently support version java 11. Further support will be available soon.

    Download Link: [Java](https://www.oracle.com/in/java/technologies/javase/jdk11-archive-downloads.html#license-lightbox)
    
-   **go-ipfs v0.6.0** - IPFS, a distributed file system is used for storage.

    Download Link: [IPFS](https://dist.ipfs.io/go-ipfs)
    
After installing IPFS, follow the steps mentioned to setup [Private Network](#setup-private-ipfs-network)

### Setup Private IPFS Network 
Before setting up the Private Network, make sure Java and IPFS are set as global **PATH** for Windows.

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

IPFS Private Network Setup is Successfully Finished ✅
      
      
      
 Download Rubix jar [here](https://github.com/rubixchain/rubixnetwork/blob/master/core-0.0.1-SNAPSHOT.jar)   
 
 Open command prompt or terminal in jar location and run "java -jar core-0.0.1-SNAPSHOT.jar"
	
For more on Rubix API, visit [Rubix API Docs](https://github.com/rubixchain/rubixnetwork/blob/master/Rubix%20API.md).
