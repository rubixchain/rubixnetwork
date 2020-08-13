# Rubix API
### DID Creation

`create`: Creates a unique Decentralized IDentity derived from user defined parameters.
```java
 $ curl --header "Content-Type: application/json" --request POST --data '{ "data": "9876543333,user@rubix.network"}' http://localhost:9501/create
  
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
$ curl --header "Content-Type: application/json" --request GET http://localhost:8881/sync
/**
* Returns: None
*/
```

### Send Tokens

`start`: Transfer tokens from one wallet address to another wallet address.
```java
 $ curl --header "Content-Type: application/json" --request POST --data '{ "receiver": "445f59c3d71c6769124470cf4b82ca0b9b1626aec4f14f50a8f1e6a13e1fc70d", "tokenCount":1, "quorum":"[]", "threadExt":"t1", "comment":"transaction comments"}' http://localhost:8881/start

/**
* This API call transfer tokens with the given input parameters
* Inputs: receiver (String), tokenCount (Integer), quorum (JSONArrayList), threadExt (String), comment (String)
* Returns: Transaction ID (String), Success / Failure (Boolean)
*/
```
### Query Balance
`getBalance`: Queries the token balance in the User's wallet.
```java
 $ curl --header "Content-Type: application/json" --request GET http://localhost:8881/getBalance
  
/**
* Inputs: None
* Returns: Amount (Integer)
*/
```
### Account Information

`accountInfo`: Retrieves the account details of a user which includes number of transactions, current balance, walletid, did etc.,

```java
 $ curl --header "Content-Type: application/json" --request GET http://localhost:8881/accountInfo

/**  
* Returns: DID (String), WalletID (WalletID), TransactionAsSender (Integer), TransactionAsReceiver (Integer), Amount (Integer)
*/
```

### View Tokens

`viewtokens`: Lists all tokens available in User's wallet.

```java
 $ curl --header "Content-Type: application/json" --request GET http://localhost:8881/viewtokens
 
/**
* Returns: TokenList (JSONArrayList)
*/
```
### Transaction Details 

`gettxndetails`: Details of a particular transaction like Quorum involved, token transferred, receiver details etc.,
```java
 $ curl --header "Content-Type: application/json" --request POST --data '{"transactionID": "82A03ABB70495A2241D7FD51079A635040A145E4C701B2C1B0C2DC92CB79AFCA"}' http://localhost:8881/gettxndetails

/**
* Inputs: transactionID (String)
* Returns: QuorumList (JSONArrayList), ReceiverWID (String), Token (String), Time (String), Amount (Integer)
*/
```
### Last N Transaction Details
`txnsbycount`: Retrieves the account details of last N number of transactions.
```java
 $ curl --header "Content-Type: application/json" --request POST --data '{"txnCount": 20}' http://localhost:8881/txnsbycount

/**
* Inputs: txnCount (Integer)
* Returns: TransactionID (String), QuorumList (JSONArrayList), ReceiverWID (String), Token (String), Time (Timestamp), Amount (Integer)
*/
```
### Transaction Details by Time Interval

`txnbydate`: Retrieves the details of the transactions during a time period.
```java
 $ curl --header "Content-Type: application/json" --request POST --data '{"eDate":"2020-04-21", "sDate":"2020-04-02"}' http://localhost:8881/txnsbydate 
/**
* Inputs: eDate (String), sDate (String)
* Returns: TransactionID (String), QuorumList (JSONArrayList), ReceiverWID (String), Token (String), Time (String), Amount (Integer)
*/
```
### View ProofChain

`viewproofchain`: Views proofchain of a particular token.
```java
 $ curl --header "Content-Type: application/json" --request POST --data '{"token": "QmeRAkURreUeWsZ5yovKSpNEC4U7UcAd91cYpbNhx4ovYW"}' http://localhost:8881/viewproofchain  
/**
* Inputs: token (String)
* Returns: ProofChain (String)
*/
```


