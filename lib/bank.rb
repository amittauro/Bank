require 'date'

class Bank
  attr_reader :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(transaction)
    @transactions.push({ date: transaction.date,
      amount: transaction.amount, type: 'deposit' })
    @balance += transaction.amount
  end

  def withdraw(transaction)
    @transactions.push({ date: transaction.date,
      amount: transaction.amount, type: 'withdraw' })
    @balance -= transaction.amount
  end
end
