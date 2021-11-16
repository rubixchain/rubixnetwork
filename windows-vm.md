# Installation

This will walk you through the way towards setting up the Rubix Environment.

### Prerequisites

-   **Java 11 JDK** - We currently support version java 11. Further support will be available soon.

    Download Link (File: jdk-11.0.10_windows-x64_bin.exe): [Java](https://www.oracle.com/in/java/technologies/javase/jdk11-archive-downloads.html#license-lightbox)
    
-   **go-ipfs v0.6.0** - IPFS, a distributed file system is used for storage.

    Download Link: [IPFS](https://dist.ipfs.io/go-ipfs/v0.6.0/go-ipfs_v0.6.0_windows-amd64.zip)
    
After downloading IPFS, follow the steps mentioned to setup.

### Setup Private IPFS Network 
**NOTE** 📋 Before setting up the Private Network, make sure Java and IPFS are set as global **PATH** for Windows.
Download the [Script and Swarm key](https://github.com/rubixchain/rubixsetup/raw/main/Windows-SetupScript.zip) for automating the process of setting up private IPFS.

1. Double click the `init.bat` file
2. Open a new terminal and run the following command to start the daemon
	```
	> ipfs daemon
	```

IPFS Private Network Setup is Successfully Finished ✅
      
Download Rubix Jar File here [here](https://github.com/rubixchain/rubixnetwork/raw/main/rubix.jar)

Run the following command to start the Jar
```
> java -jar Rubix.jar
```
 
Double Click the installer and follow the setup instructions      
