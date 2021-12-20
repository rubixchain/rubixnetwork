<p align="center">
  <a href="https://rubix.network">
    <img alt="Solana" src="https://i.imgur.com/6vToeX2.png" width="150" />
  </a>
</p>

# Rubix - ProofChain

A deterministic state-machine that is designed to address the scale, cost, and privacy shortcomings of blockchain protocols that rely on one sequentially organized chain of all global transactions. The global state-machine is divided into finite number of state-machines called ProofChains. While each ProofChain maintains one state, together all ProofChains represent a globally accessible singleton state that is immutable. 

# Features

* Instant Confirmation and Finality of Transaction
* Proof of Harvest (PoH)
* Asynchronous Parallelism
* Double Spending and Fork Resolution
* Hard capped native tokens with publicly verifiable , immutable mathematical proofs
* Non-Linear Secret Sharing (NLSS)

# Transaction Speed and Finality

All transactions in Rubix network reaches a state of instant confirmation. This is in contrast with the traditional blockchain models where a transaction/block is only probabilistically final. Each transaction in Rubix network on average takes 200 milliseconds for confirmation. With Rubix parallel chain architecture, millions of such transactions can be performed simultaneously. The performance of blockchain or any client-server tends to degrade in general with more number of transactions which causes more loading to network. This is mainly beacuse of the restrictions to block size & resulting security restrictions. Bitcoins' layer 1 still approves only 3500 transactions in 10 minutes. This stays still irrespective to the number of full nodes in network. Other semi-centralized solutions are able to scale upto few thousands of transactions. In all cases, increase in the size and capability of nodes does not increase the transaction speed.

However,the transaction capabiltity of Rubix network increases with more users in the network. Rubix maximizes the overall resource capability of the network. The peer to peer architecture compounded by the MPC based PoH of Rubix means that the transaction range is limited only by the number of nodes in the network.

The below table depicts the number of nodes required for achieving certain amount of tps.

| **TPS**             | **Number of Nodes**          
| :-------------------| :-------------------:|
| 1000                | 200   |
| 5000                | 1000  |
| 10000               | 2000  |
| 50000               | 10000 |
| 100000              | 20000 |

Rubix can achieve 10 million tps with 2 million users, whereas bitcoin with same number of full nodes publish approximately 7 transactions. A single node can perform 5 transactions per second. Similarly, in theory all nodes in the network can perform 5 completely independent transactions.

# Getting Started
1. Follow the Rubix Installation Procedure (including wallet) depending on your OS - [Mac](https://github.com/rubixchain/rubixnetwork/blob/master/mac.md) / [Linux](https://github.com/rubixchain/rubixnetwork/blob/master/linux.md) / [Windows](https://github.com/rubixchain/rubixnetwork/blob/master/windows.md)
2. Installation Procedure for Virtual Machine Node depending on your OS - [Mac](https://github.com/rubixchain/rubixnetwork/blob/master/mac-vm.md) / [Linux](https://github.com/rubixchain/rubixnetwork/blob/master/linux-vm.md) / [Windows](https://github.com/rubixchain/rubixnetwork/blob/master/windows-vm.md)
3. You can query at [Rubix Discussion Forum](https://t.me/joinchat/FVW78xbBBvefEUSBB0p4Fw)

# Useful Links
* [Website](https://rubix.network/)
* [Documentation](https://rubix.network/)
* [Twitter](https://twitter.com/RubixChain)
* [Telegram](https://t.me/joinchat/FVW78xbBBvefEUSBB0p4Fw)
* [Discussion Forum](https://t.me/joinchat/FVW78xbBBvefEUSBB0p4Fw)

# Project Private Links

This Project is currently developed in Java. Multi-Language support will be available soon.

| **Language**        | **Project**           | **Completeness**  |
| :-------------------|:---------------------:| -----------------:|
| Java                | https://github.com/rubixchain/rubixcorejava | **Alpha(Private)** |
| Rust              | https://github.com/rubixchain/rust-rubix | **Alpha(Private)** |
| Kotlin              | https://github.com/rubixchain/kotlin-rubix | Available Soon |
| go                  | https://github.com/rubixchain/go-rubix | Available Soon |

# HTTP Client-Library

| **Language**        | **Project**           | **Completeness**  |
| :-------------------|:---------------------:| -----------------:|
| Java                | https://github.com/rubixchain/java-rubix-api | **Alpha(Private)** |
| Python              | https://github.com/rubixchain/py-rubix-api | Available Soon |
| Kotlin              | https://github.com/rubixchain/kotlin-rubix-api | Available Soon |
| Go                  | https://github.com/rubixchain/go-rubix-api | Available Soon |

# Specs and Papers

* Specifications of Rubix - [specs](https://rubix.network/)

* White Paper - [paper](https://github.com/rubixchain/rubixnetwork/blob/master/RubiX_WhitePaper%20R1.6.pdf)
