require './lib/statement.rb'

describe 'Statement class' do
  it 'creates an empty statement' do
    # set up
    statement = Statement.new
    # verify
    expect(statement.display).to eq "date || credit || debit || balance"
  end

  it 'shows statement for one deposit' do
    # set up
    statement = Statement.new
    # execute
    statement.update("10/01/2012 || 1000.00 || || 1000.00")
    # verify
    expect(statement.display).to eq "date || credit || debit || balance\
\n10/01/2012 || 1000.00 || || 1000.00"
  end

  it 'shows a statement in order for deposit and withdrawl' do
    # set up
    statement = Statement.new
    # execute
    statement.update("10/01/2012 || 1000.00 || || 1000.00")
    statement.update("13/01/2012 || || 500.00 || 500.00")
    # verify
    expect(statement.display).to eq "date || credit || debit || balance\
\n13/01/2012 || || 500.00 || 500.00\
\n10/01/2012 || 1000.00 || || 1000.00"
  end

end
