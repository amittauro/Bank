require './lib/bank.rb'

describe 'Bank class' do
  it 'can show the balance' do
    # set up
    bank = Bank.new
    # execute
    # verify
    expect(bank.balance).to eq 0
  end

  it 'can deposit an amount on a date and update balance' do
    # set up
    bank = Bank.new
    # execute
    bank.deposit(1000, "10/01/2012")
    # verify
    expect(bank.balance).to eq 1000
  end

  it 'can withdraw an amount on a date and update balance' do
    # set up
    bank = Bank.new
    # execute
    bank.deposit(1000, "10/01/2012")
    bank.withdraw(500, "13/01/2012")
    # verify
    expect(bank.balance).to eq 500
  end
end

describe 'creating a statement' do
  it 'shows statement' do
    # set up
    bank = Bank.new
    # verify
    expect(bank.statement).to eq "date || credit || debit || balance"
  end

  it 'shows statement for one deposit' do
    # set up
    bank = Bank.new
    # execute
    bank.deposit(1000, "10/01/2012")
    # verify
    expect(bank.statement).to eq "date || credit || debit || balance\
\n10/01/2012 || 1000.00 || || 1000.00"
  end

  it 'shows statement for one deposit and one withdrawal in order of most recent transaction' do
    # set up
    bank = Bank.new
    # execute
    bank.deposit(1000, "10/01/2012")
    bank.withdraw(500, "13/01/2012")
    # verify
    expect(bank.statement).to eq "date || credit || debit || balance\
\n13/01/2012 || || 500.00 || 500.00\
\n10/01/2012 || 1000.00 || || 1000.00"
  end
end

describe 'Full statement' do
  it 'shows a full statement' do
    # set up
    bank = Bank.new
    # execute
    bank.deposit(1000, "10/01/2012")
    bank.deposit(2000, "13/01/2012")
    bank.withdraw(500, "14/01/2012")
    # verify
    expect(bank.statement).to eq "date || credit || debit || balance\
\n14/01/2012 || || 500.00 || 2500.00\
\n13/01/2012 || 2000.00 || || 3000.00\
\n10/01/2012 || 1000.00 || || 1000.00"
  end
end
