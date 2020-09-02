require './lib/bank.rb'
require './lib/statement.rb'
require './lib/transaction.rb'
require 'date'

describe 'Full statement' do
  it 'shows a full statement in order' do
    # set up
    bank = Bank.new
    # statement = Statement.new(bank.transactions)
    # execute
    transaction1 = Transaction.new(1000, Date.new(2012, 01, 10))
    transaction2 = Transaction.new(500, Date.new(2012, 01, 14))
    transaction3 = Transaction.new(2000, Date.new(2012, 01, 13))
    bank.deposit(transaction3)
    bank.deposit(transaction1)
    bank.withdraw(transaction2)
    statement = Statement.new(bank.transactions)
    # verify
    expect { statement.create }.to output("date || credit || debit || balance\
\n14/01/2012 || || 500.00 || 2500.00\
\n13/01/2012 || 2000.00 || || 3000.00\
\n10/01/2012 || 1000.00 || || 1000.00\n")
  end
end
