### Prerequisites

-   **Java 11 JDK** - We currently support version java 11. Further support will be available soon.

    Download Link: [Java](https://www.oracle.com/in/java/technologies/javase/jdk11-archive-downloads.html#license-lightbox)
    
-   **go-ipfs v0.6.0** - IPFS, a distributed file system is used for storage.

    Download Link: [IPFS](https://github.com/rubixchain/rubixsetup/blob/b92dcb5fa036c2683c31ab8f9b8c8f17fd455546/go-ipfs_v0.6.0_linux-amd64.tar.gz)
    
After installing IPFS, follow the steps mentioned to setup.

### Setup Private IPFS Network 
The path is automatically set as global during the time of installation.
Download the [Script and Swarm key](https://github.com/rubixchain/rubixsetup/blob/b92dcb5fa036c2683c31ab8f9b8c8f17fd455546/Linux-SetupScript.zip) for automating the process of setting up private IPFS.

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
      
Download Rubix Wallet Applcation [here](https://github.com/rubixchain/wallet/releases/tag/v0.1)   
 
Double Click the installer and follow the setup instructions      
