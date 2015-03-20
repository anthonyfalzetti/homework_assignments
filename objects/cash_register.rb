#!/usr/bin/env ruby

class Register
  def initialize
    @total = 0
  end

  def total
    puts sprintf('%.2f', @total)
  end

  def purchase(amount = 0)
    @total += amount
    puts sprintf('%.2f', @total)
  end

  def pay(amount = 0)
    if @total - amount > 0
      @total -= amount
      puts "Your new total is $#{sprintf('%.2f', @total)}"
    else
      change = amount - @total
      @total = 0
      puts "Your change is $#{sprintf('%.2f', change)}"
    end
  end
end

register = Register.new
register.total
register.purchase(3.78)
register.purchase(5.22)
register.total
register.pay(5.00)
register.total
register.pay(5.00)
register.total
