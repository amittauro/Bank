Specification

Requirements

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance<br/>
14/01/2012 || || 500.00 || 2500.00<br/>
13/01/2012 || 2000.00 || || 3000.00<br/>
10/01/2012 || 1000.00 || || 1000.00<br/>

Objects | Messages<br/>
1. Bank | deposit(amount, date)
2. Bank | withdraw(amount, date)
3. Bank | balance
4. Bank | statement

TDD

1. shows the balance
2. updates balance when depositing
3. updates balance when withdrawing
4. shows statement for no transactions
5. shows statement for one deposit
6. shows statement for one withdrawal
7. shows statement for deposit and withdrawal
8. shows full statement
