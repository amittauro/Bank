class Bank
  attr_reader :balance

  def initialize(statement)
    @balance = 0
    @statement = statement
  end

  def deposit(amount, date)
    @balance += amount
    @statement.update("#{date} || #{amount}.00 || || #{@balance}.00")
  end

  def withdraw(amount, date)
    @balance -= amount
    @statement.update("#{date} || || #{amount}.00 || #{@balance}.00")
  end
end
