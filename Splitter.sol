pragma solidity ^0.4.6;


/*There are 3 people
	Three addresses
We can see the balance of the Splitter contract
	Get the balance of the contract
We can see balances of all 3 people
	Function to get the balance of each person
We can send Ether to the contract from the web page
	-Whenever Alice sends ether to contract, half to Bob half to Carol
	-Anyone can contribute to the contract normally. If it is alice 
	who is contributing, then half to bob and half to carol.
*/

contract Splitter { 
	address public Alice;
	address public Bob;
	address public Carol;
	uint public splitterBalance;

	address[] public people = [Alice, Bob, Carol];
	uint[] public balances = [Alice.balance, Bob.balance, Carol.balance];

    function sendEth() public payable returns(bool success) {
        assert(msg.value!=0);
        if(msg.sender == Alice) {
            uint halfValue = msg.value/2;
            Bob.transfer(halfValue);
            Carol.transfer(halfValue);
        }
        else {
            splitterBalance += msg.value;
        }
        
        
        return true;
    }

	function peopleBalance() public constant returns(uint[] bals) {
	    return balances;
	}

	function contractBalance() public constant returns(uint bal) {
		return splitterBalance;
	}

}