require './lib/transaction.rb'
require 'date'

describe 'transaction spec' do
  it 'shows transaction amount' do
    transaction = Transaction.new(1000, Date.new(2001, 03, 10))
    # verify
    expect(transaction.amount).to eq 1000
  end

  it 'shows transaction date' do
    transaction = Transaction.new(1000, Date.new(2001, 03, 10))
    # verify
    expect(transaction.date).to eq Date.new(2001, 03, 10)
  end
end
