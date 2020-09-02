require './lib/statement.rb'
require 'date'

describe 'Statement class' do
  it 'creates an empty statement' do
    # set up
    statement = Statement.new([])
    # verify
    expect { statement.create }.to output "date || credit || debit || balance\n"
  end

  it 'shows statement for one deposit' do
    # set up
    statement = Statement.new([{ date: Date.new(2012, 01, 10), amount: 1000,
       type: 'deposit' }])
    # execute
    # statement.update("10/01/2012 || 1000.00 || || 1000.00")
    # verify
    expect { statement.create }.to output("date || credit || debit || balance\
\n10/01/2012 || 1000.00 || || 1000.00\n")
  end
end
