# Rubix API Calls

## DID Creation

Creates a unique Decentralized IDentity 
```
curl --location --request POST 'http://localhost:1898/create' --form 'data="Rubik"' --form 'image=@"imagepath"'
```

**Image needed to create Decetralized ID**

While creating a new DID, user has to provide any 256x256 PNG format image as a parameter along with a Passphrase string. Private Key, Wallet ID and DID are generated using this image and passphrase. 

----

***Request Type***:    POST
***Port***:            1898
***Input***:           data(String) and [256x256] image(Multipart File)
***Returns***:         DID (String)


## Initial Setup

Does the initial setup of IPFS and syncing the network nodes
```
curl --header "Content-Type: application/json" --request GET 'http://localhost:1898/start'
```

***Request Type***:    GET
***Port***:            1898
***Input***:           nill
***Returns***:         nill


## Transfer Tokens

Transfers token(s) from one wallet address to another 
```
curl --header "Content-Type: application/json" --request POST http://localhost:1898/initiateTransaction --data '{ "receiver": "<receiver DID here>", "tokenCount":1, "comment":"transaction comments", "type":1}' 
```

***Request Type***:    POST
***Port***:            1898
***Input***:           receiver (String), tokenCount (Integer), comment (String)
***Returns***:         Transaction ID (String), Success / Failure (Boolean), DID (String)


## Commit File Blocks

Commit a file block to quorum members for storage
```
curl --header "Content-Type: application/json" --request POST http://localhost:1898/initiateTransaction --data '{ "blockHash": "<block hash file contains IPFS hash of all metadata to be pinned by quorum>", "comment":"transaction comments", "type":1}' 
```

***Request Type***:    POST
***Port***:            1898
***Input***:           blockHash (String), comment (String)
***Condition***: Sender should have atleast one valid Rubix Token in the wallet
***Returns***:         Transaction ID (String), Success / Failure (Boolean), DID (String)


## Validate File Blocks

Validate files stored by quorum members 
```
curl --header "Content-Type: application/json" --request POST http://localhost:1898/verifyBlock --data '{ "blockHash": "445f59c3d71c6769124470cf4b82ca0b9b1626aec4f14f50a8f1e6a13e1fc70d"}'
```

***Request Type***:    POST
***Port***:            1898
***Input***:           blockHash (String)
***Condition***: Given block file hash should be already commited for validation before. 
***Returns***:         Hash of each input file given in blockHash file and number of validators storing it in blockchain, Success / Failure (Boolean)

## Account Information
Retrieves the user account details 

```
curl --header "Content-Type: application/json" --request GET http://localhost:1898/getAccountInfo
```

***Request Type***:    GET
***Port***:     1898
***Input***:  nill
***Returns***: DID (String), WalletID (String), TransactionAsSender (Integer), TransactionAsReceiver (Integer), Balance (Integer)


## Get Transaction Details with Transaction ID

Details of a particular transaction like Quorum involved, token transferred, receiver details, time and more
```
curl --header "Content-Type: application/json" --request POST  http://localhost:1898/getTxnDetails --data '{"transactionID": "e76547ab5f3b08bd42e0e6b2b9996a81ca4481e2554eb28e20ef09b636474des"}'
```

***Request Type***:    POST
***Port***:     1898
***Input***:    transactionID (String)
***Returns***:  senderDID(String), role(String), totalTime(Integer), quorumLGMT(ArrayList[String]), tokens(ArrayList), comment(String), txn(String), essentialShare(String), receiverDID(String), Date(Date)


## Get Transaction Details with Date

Retrieves the details of all the transactions committed during the specified period
```
curl --header "Content-Type: application/json" --request POST http://localhost:1898/getTxnByDate --data-raw '{"sDate":"Wed Jun 09 12:56:04 AST 2021",
"eDate":"Wed Jun 09 12:57:58 AST 2021"}'
```
 
 ***Request Type***:    POST
***Port***:     1898
***Input***:  sDate (String),  eDate (String)
***Returns***: senderDID(String), role(String), totalTime(Integer), quorumLGMT(ArrayList[String]), tokens(ArrayList), comment(String), txn(String), essentialShare(String), receiverDID(String), Date(Date)

## Get Transaction Details with Comment

Retrieves the details of all the transactions committed with the specified comment
```
curl --header "Content-Type: application/json" --request POST http://localhost:1898/getTxnByComment --data '{"comment":"First"}'
```
 
 ***Request Type***:    POST
***Port***:     1898
***Input***:  comment (String)
***Returns***: senderDID(String), role(String), totalTime(Integer), quorumLGMT(ArrayList[String]), tokens(ArrayList), comment(String), txn(String), essentialShare(String), receiverDID(String), Date(Date)

## Get Transaction Details with Count

Retrieves the last specified count of transactions committed 
```
curl --header "Content-Type: application/json" --request POST http://localhost:1898/getTxnByCount --data '{"txnCount" : 3}' 
```
 
 ***Request Type***:    POST
***Port***:     1898
***Input***:  count (Integer)
***Returns***: senderDID(String), role(String), totalTime(Integer), quorumLGMT(ArrayList[String]), tokens(ArrayList), comment(String), txn(String), essentialShare(String), receiverDID(String), Date(Date)

## Get Transaction Details with User's DID

Retrieves all the transactions made with the input DID
```
curl --header "Content-Type: application/json" --request POST http://localhost:1898/getTxnByDID
 --data '{"did" : "QmdkrLpyoGFrhsbeuZrXpcvr2QRsLuQnrbXVfJTe1yXqzy"}' 
 ```
 
 ***Request Type***:    POST
***Port***:     1898
***Input***:  did (String)
***Returns***: List of all transactions and its details made with the did

## Get Transaction Details by Range

Retrieves all the transactions made with the input DID
```
curl --header "Content-Type: application/json" --request POST http://localhost:1898/getTxnByRange --data-raw '{"startRange":1, "endRange":4}'
```
 
 ***Request Type***:    POST
***Port***:     1898
***Input***:  startRange(int), endRange(int)
***Returns***: List of all transactions and its details within a range bound


## Get Transaction Header Details

Summarize transaction information
```
curl --header "Content-Type: application/json" --request GET 'http://localhost:1898/getTransactionHeader'
```
 
 ***Request Type***:    GET
***Port***:     1898
***Input***:  nill
***Returns***: spentCredits(int), unspentCredits(int), txnCount(int), maxCredits(int)


## List of Tokens
Lists out all the tokens available in the user's wallet
```
curl --header "Content-Type: application/json" --request GET http://localhost:1898/viewTokens
```

***Request Type***:    GET
***Port***:     1898
***Input***:   nill
***Returns***: List of Tokens (JSONObject)

## List of Peers Online

Lists all your contacts currently available online
```
curl --header "Content-Type: application/json" --request GET http://localhost:1898/getOnlinePeers
```

***Request Type***:    GET
***Port***:     1898
***Input***:   nill
***Returns***: List of objects: did(String), online/offline

## View Contacts 

Lists all contacts in your addressbook
```
curl --header "Content-Type: application/json" --request GET http://localhost:1898/getContactsList
```

***Request Type***:    GET
***Port***:     1898
***Input***:   nill
***Returns***: List of objects: did(String), nickname(String)

## View Network Nodes 

Lists all the nodes in the network
```
curl --header "Content-Type: application/json" --request GET http://localhost:1898/getNetworkNodes
```

***Request Type***:    GET
***Port***:     1898
***Input***:   nill
***Returns***: List of DIDs

## View Network Nodes 

Add an easier and convinient name to your contacts
```
curl --location --request POST 'http://localhost:1898/addNickName' --form 'did="QmaGVzjsv4JnQSRdmCfWeMaBPiCTDf8y6scHNfmkRmEfc0"' --form 'nickname="User123"'
```

***Request Type***:    POST
***Port***:     1898
***Input***:   nill
***Returns***: Confirmation message



## Details for Dashboard

Lists all required details of user's wallet
```
curl --header "Content-Type: application/json" --request GET http://localhost:1898/getDashboard
```

***Request Type***:    GET
***Port***:     1898
***Input***:   nill
***Returns***: totalTxns(Integer), WalletID(String), balance(Integer), , receiverTxns(Integer), senderTxns(Integer), contactsCount(Integer), onlinePeers(Integer), transactionsPerDay(List), did(String)


## Close Streams

To close all the streams open
```
curl --header "Content-Type: application/json" --request GET http://localhost:1898/p2pClose
```

***Request Type***:    GET
***Port***:     1898
***Input***:   nill
***Returns***: nill

## Synchronise Network Nodes

To synchronize the DIDs of the systems, so that the node will have an updated list of all the DIDs in the network.
```
curl --header "Content-Type: application/json" --request GET http://localhost:1898/sync
```

***Request Type***:    GET
***Port***:     1898
***Input***:   nill
***Returns***: nill


## View bootstraps

View list of bootstraps connected to the node
```
curl --header "Content-Type: application/json" --request GET http://localhost:1898/bootstrap
```

***Request Type***:    GET
***Port***:     1898
***Input***:   Null
***Returns***: Response (String)

## Add bootstrap

Add bootstrap id to the boostrap list
```
curl --header "Content-Type: application/json" --request POST http://localhost:1898/bootstrap?id=<bootstrap-id>
```

***Request Type***:    POST
***Port***:     1898
***Input***:   Bootstrap ID
***Returns***: Response (String)

## Remove bootstrap

Remove boostrap id from the boostrap list
```
curl --header "Content-Type: application/json" --request DELETE http://localhost:1898/bootstrap?id=<bootstrap-id>
```

***Request Type***:    DELETE
***Port***:     1898
***Input***:   Bootstrap ID
***Returns***: Response (String)
