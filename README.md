# eth+avax  Project1

The project involves
* Contract successfully uses require()
* Contract successfully uses assert()
* Contract successfully uses revert() statements

## Description

This project is a Ethereum baesd smart contract coded in soldity for any Token of your choice . It shows the use of reqire(), assert(), revert() statements
## Getting Started

### Installing

* Open [Remix IDE](https://remix.ethereum.org/)
* Create a new file named `assesment_ethavax.sol` and paste the code given in this repository (assesment_ethavax).
* Copy and paste the code from the file to the online editor(remix) or any compiler of your choice.

### Executing program (Remix editor)

* Copy and Paste the program
* Go to solidity compiler in the left side panel and compile the program
* Go to Deploy & run transactions in the left side panel and Deploy the program
* Now in "Deployed Section" :
   * Use the function 'createProposal' to create new proposal
     * Here require statement is used to make sure that proposal cannot be empty.
   * Use the function 'vote' to vote and here if an account tries to vote multiple time revert 
      is called. 
     * Here revert and assert statement is also used in vote function.
   * Use the function 'tallyVotes' to taally the vote for future results.
     * Here reuire is used to make sure that proposal id is valid or not.

## Help
For any issues, you can refer to the Remix documentation or common Ethereum development resources.

## Authors

Contributors names and contact info

Ravneet Singh 
[@22BCS15231] (ravneetsingh290@gmail.com)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
