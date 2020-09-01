require './lib/bank.rb'

describe 'Bank class' do
  it 'can show the balance' do
    # set up
    statement = test_double
    allow(statement).to receive(:update) { nil }
    bank = Bank.new(statement)
    # execute
    # verify
    expect(bank.balance).to eq 0
  end

  it 'can deposit an amount on a date and update balance' do
    # set up
    statement = test_double
    allow(statement).to receive(:update) { nil }
    bank = Bank.new(statement)
    # execute
    bank.deposit(1000, "10/01/2012")
    # verify
    expect(bank.balance).to eq 1000
  end

  it 'can withdraw an amount on a date and update balance' do
    # set up
    statement = test_double
    allow(statement).to receive(:update) { nil }
    bank = Bank.new(statement)
    # execute
    bank.deposit(1000, "10/01/2012")
    bank.withdraw(500, "13/01/2012")
    # verify
    expect(bank.balance).to eq 500
  end
end
