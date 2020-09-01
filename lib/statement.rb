class Statement
  def initialize
    @display = []
  end

  def display
    @display.reverse!
    header
    @display.join("\n")
  end

  def update(transaction)
    @display.push(transaction)
  end

  private

  def header
    @display.insert(0, "date || credit || debit || balance")
  end
end
