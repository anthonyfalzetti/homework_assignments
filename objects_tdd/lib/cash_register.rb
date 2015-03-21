class CashRegister
  attr_reader :total, :change

  def initialize
    @total = 0.00
  end

  def purchase(amount)
    @total += amount
  end

  def pay(amount)
    if amount > @total
      @change = amount - @total
      @total = 0.00
      puts "Your change is $#{@change}."
    else
      @total -= amount
    end
  end

  def change
    @change.round(2)
  end
end
