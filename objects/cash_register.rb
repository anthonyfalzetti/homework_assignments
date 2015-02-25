#!/usr/bin/env ruby

class Register
  def initialize
    @total = 0
  end
  def total
    @total
    puts sprintf('%.2f',@total)
  end
  
  def purchase(amount=0)
    @total += amount
    puts sprintf('%.2f',@total)
  end
  
  def pay(amount=0)
    @total -= amount
    change = @total * -1
    @total += change
    puts "Your change is $#{sprintf('%.2f', change)}"
  end
end
