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
* Create a new file named `assessment1.sol` and paste the code given in this repository (assessment1).
* Copy and paste the code from the file to the online editor(remix) or any compiler of your choice.

### Executing program (Remix editor)

* Copy and Paste the program
* Go to solidity compiler in the left side panel and compile the program
* Go to Deploy & run transactions in the left side panel and Deploy the program
* Now in "Deployed Section" :
   * Use the function 'mint' to create new tokens(and see how require and assert is working):
     * Enter an address and value.
     * Add value 0 and it will trigger the require statement:
        require(_value > 0, "Mint value must be greater than zero");
     * On terminal we wil get error: "Mint value must be greater than zero"
     * Also assert() statement here make sure that the balances and total supply are correctly updated
     * Similarly require and assert statement is also used in burn function
   * Use the function 'burn' to see the use of revert function:
     * If the value of balances will get negative the following condition will be called:
        // If balance goes negative (shouldn't happen), revert explicitly
        if (balances[_address] < 0) {
            revert("Balance cannot be negative");
        }
     * This will make sure that the value of balances will always positive .
     * If it is negative we will get error on terminal with statement: "Balance cannot be negative". 

## Help
For any issues, you can refer to the Remix documentation or common Ethereum development resources.

## Authors

Contributors names and contact info

Ravneet Singh 
[@22BCS15231] (ravneetsingh290@gmail.com)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
