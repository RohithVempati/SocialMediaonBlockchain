# SocialMediaonBlockchain

Simple Social Media App consisting of functions like create post, upvote, downvote and search function.
Test the App here: https://rohithvempati.github.io/SocialMediaonBlockchain/

# Description

This is a sample project to implement a solidity contract through web server. The Contract Address in the project may not work in future, consider deploying your own contract and using the Contract Address.

# Important

The Goal of this project to share information among groups of people (social media). That is only the people on the Blockchain with the same contract will be able to view the posts made by each other. It is to maintain the Information Reliable amongst the groups, by ensuring only the group members with access to the contract address can post, upvote, downvote.

However, using publicly available blockchains such as Ethereum Blockchain or Test Networks will make this project a Simple Social Media Network, just as currently available ones. But, alteration or deletion of posts from the blockchain will not be possible by third parties, considering how secured the blockchains currently available are. This will still ensure that this Social Media Platform will be decentralised making it helpful to share any critical information that might get deleted on any other platforms which are centralised.


# Deployment

The contract.sol file available in the repository can be cloned and updated accordingly to your usage and deployed on any blockchain.
It is suggestible that you use remix IDE to do so, as the code was written in Solidity completely. For testing purpose you may use Ganache Blockchain.
Also, it will be best if you just connect to your network and deploy directly. 


# Implementation

For this current project, we have used a web based approach to access the contract with help of metamask web3 connection to the webpage, however the contract can be used directly with your existing projects by using the contract address after the deployment. 

To implement the Contract as Website, you may use a web server, to achieve it. (for example, xammp apache for local testing)


# Website Instructions

After the Deployment and Implementation of the project is done, you can access the contract as a website.

  # Prerequisite
    Metamask Extension for your browser should be installed to interact with the contract in web based mode.

The Website will open the metamask popup asking to connect a wallet, makesure you are on the same blockchain network as when the contract was deployed, then connect to the website.
Now you will be able to use the functionality of the webpage, if there are posts already on the blockchain they will be loaded, which requires no transactions. 
But for posting, upvoting and downvoting, transactions are required as the user is needed to confirm his action(sign the transaction). currently no charges for doing these transactions, but your network may require network fee.

# Actions which require no transactions:
 > Searching for posts
 > Retrieving of posts on Blockchain

# Actions which require transactions:
 > Creating a Post
 > Upvoting a Post
 > Downvoting a Post

# Note
This project is not completed yet, and there will further changes to the current solidity code.
Must make changes after 10-15 days, must make it look good. only running on browsers with metamask extension, must fix it.



