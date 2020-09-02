class Statement
  def initialize(transactions)
    @transactions = transactions
  end

  def create
    @transactions.sort_by! { |transaction| transaction[:date] }
    format.reverse!.insert(0, "date || credit || debit || balance").each do |transaction|
      puts transaction
    end
  end

  private

  def format
    balance = 0
    @transactions.map do |transaction|
      if transaction[:type] == 'deposit'
        "#{transaction[:date].strftime('%d/%m/%Y')} || \
#{transaction[:amount]}.00 || || #{balance += transaction[:amount]}.00"
      else
        "#{transaction[:date].strftime('%d/%m/%Y')} || || \
#{transaction[:amount]}.00 || #{balance -= transaction[:amount]}.00"
      end
    end
  end
end
