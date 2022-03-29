pragma solidity ^0.5.0;

contract JointSavings {

    address payable accountOne;
    address payable accountTwo;
    address public lastToWithdraw;
    uint public lastWithdrawAmount;
    uint public contractBalance;

    function withdraw(uint amount, address payable recipient) public {
        
        if (lastToWithdraw != recipient) {
            lastToWithdraw = recipient;
        }

        return recipient.transfer(amount);

        lastWithdrawAmount = amount;

        contractBalance = address(this).balance;
    }

    function deposit() public payable {

        Call the `contractBalance` variable and set it equal to the balance of the contract by using `address(this).balance`.
        contractBalance = address(this).balance;
    }

    Define a `public` function named `setAccounts` that receive two `address payable` arguments named `account1` and `account2`.
    function setAccounts(address payable account1, address payable account2) public{

        accountOne = account1;
        accountTwo = account2;
    }

    
    function() external payable {}
}
