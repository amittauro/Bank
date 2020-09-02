require './lib/bank.rb'
require 'date'

describe 'Bank class' do
  it 'can deposit an amount on a date and update balance' do
    # set up
    bank = Bank.new
    transaction = test_double
    allow(transaction).to receive(:amount) { 1000 }
    allow(transaction).to receive(:date) { Date.new(2012, 01, 10) }
    # execute
    # verify
    expect(bank.deposit(transaction)).to eq 1000
  end

  it 'can withdraw an amount on a date and update balance' do
    # set up
    bank = Bank.new
    transaction1 = test_double
    allow(transaction1).to receive(:amount) { 1000 }
    allow(transaction1).to receive(:date) { Date.new(2012, 01, 10) }
    transaction2 = test_double
    allow(transaction2).to receive(:amount) { 500 }
    allow(transaction2).to receive(:date) { Date.new(2012, 01, 13) }
    # execute
    bank.deposit(transaction1)
    # verify
    expect(bank.withdraw(transaction2)).to eq 500
  end
end
