class Bank
  attr_reader :balance

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(amount, date)
    @balance += amount
    @statement.push("#{date} || #{amount}.00 || || #{@balance}.00")
  end

  def withdraw(amount, date)
    @balance -= amount
    @statement.push("#{date} || || #{amount}.00 || #{@balance}.00")
  end

  def statement
    @statement.reverse!
    @statement.insert(0, "date || credit || debit || balance")
    @statement.join("\n")
  end
end
