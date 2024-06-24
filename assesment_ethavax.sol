// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;



contract MyToken {

    // public variables here
    string public tokenName = "SLOY";
    string public tokenAbbrv = "SLY";
    uint public totSupply = 0;

    // mapping variable here
    mapping (address => uint) public balances;

    // mint function
    function mint(address _address, uint _value) public {
        // Ensure that the value to be minted is greater than zero
        require(_value > 0, "Mint value must be greater than zero");
        
        totSupply += _value;
        balances[_address] += _value;
        
        // Assert that the total supply and balance are correctly updated
        assert(totSupply >= balances[_address]);
    }

    // burn function
    function burn(address _address, uint _value) public {
        // Check if the sender has enough balance to burn
        require(balances[_address] >= _value, "Insufficient balance to burn");
        
        // Ensure that the value to be burned is greater than zero
        require(_value > 0, "Burn value must be greater than zero");
        
        totSupply -= _value;
        balances[_address] -= _value;
        
        // Assert that the total supply and balance are correctly updated
        assert(totSupply >= 0);
        
        // If balance goes negative (shouldn't happen), revert explicitly
        if (balances[_address] < 0) {
            revert("Balance cannot be negative");
        }
    }
}
