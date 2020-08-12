
# Rubix API
### DID Creation

`create`: Creates a unique Decentralized IDentity derived from user defined parameters.
```java
 $ curl -X POST http://localhost:9501/create -d
 {
    "data": "9876543333,user@rubix.network"
 }
/**  
* This API call does DID creation with the given input parameters
* Inputs: data (String)
* Returns: DID (String)
*/
```
> **NOTE** :clipboard: Ports 9501 and 8881 are used for API communication to the Client Libraries. 

### Sync
`sync`: To synchronize the DIDs of the systems, so that the node will have an updated list of all the DIDs in the network.
```java
 $ curl -X GET http://localhost:8881/sync -d
/**
* Returns: None
*/
```

### Send Tokens

`start`: Transfer tokens from one wallet address to another wallet address.
```java
 $ curl -X POST http://localhost:8881/start -d  
 {
    "receiver": "75239D03C9A8BD9381C16B0D78A21A1493B1D2AB982DA8824EF068471FF96020",
    "tokenCount":1,
    "quorum":"[]",
    "threadExt":"t1",
    "comment":"transaction comments"
 }
/**
* This API call transfer tokens with the given input parameters
* Inputs: receiver (String), tokenCount (Integer), quorum (JSONArrayList), threadExt (String), comment (String)
* Returns: Transaction ID (String), Success / Failure (Boolean)
*/
```
### Query Balance
`getBalance`: Queries the token balance in the User's wallet.
```java
 $ curl -X GET http://localhost:8881/getBalance -d  
/**
* Inputs: None
* Returns: Amount (Integer)
*/
```
### Account Information

`accountInfo`: Retrieves the account details of a user which includes number of transactions, current balance, walletid, did etc.,

```java
 $ curl -X GET http://localhost:8881/accountInfo -d 
/**  
* Returns: DID (String), WalletID (WalletID), TransactionAsSender (Integer), TransactionAsReceiver (Integer), Amount (Integer)
*/
```

### View Tokens

`viewtokens`: Lists all tokens available in User's wallet.

```java
 $ curl -X GET http://localhost:8881/viewtokens -d 
/**
* Returns: TokenList (JSONArrayList)
*/
```
### Transaction Details 

`gettxndetails`: Details of a particular transaction like Quorum involved, token transferred, receiver details etc.,
```java
 $ curl -X POST http://localhost:8881/gettxndetails -d  
 {
    "transactionID": "82A03ABB70495A2241D7FD51079A635040A145E4C701B2C1B0C2DC92CB79AFCA"
 }
/**
* Inputs: transactionID (String)
* Returns: QuorumList (JSONArrayList), ReceiverWID (String), Token (String), Time (String), Amount (Integer)
*/
```
### Last N Transaction Details
`txnsbycount`: Retrieves the account details of last N number of transactions.
```java
 $ curl -X POST http://localhost:8881/txnsbycount -d  
 {
    "txnCount": 20
 }
/**
* Inputs: txnCount (Integer)
* Returns: TransactionID (String), QuorumList (JSONArrayList), ReceiverWID (String), Token (String), Time (Timestamp), Amount (Integer)
*/
```
### Transaction Details by Time Interval

`txnbydate`: Retrieves the details of the transactions during a time period.
```java
 $ curl -X POST http://localhost:8881/txnsbydate -d  
 {
    "eDate":"2020-04-21",
    "sDate":"2020-04-02"
  }
/**
* Inputs: eDate (String), sDate (String)
* Returns: TransactionID (String), QuorumList (JSONArrayList), ReceiverWID (String), Token (String), Time (String), Amount (Integer)
*/
```
### View ProofChain

`viewproofchain`: Views proofchain of a particular token.
```java
 $ curl -X POST http://localhost:8881/viewproofchain -d 
 {
    "token": "QmeRAkURreUeWsZ5yovKSpNEC4U7UcAd91cYpbNhx4ovYW"
 }
/**
* Inputs: token (String)
* Returns: ProofChain (String)
*/
```


