#!/usr/bin/env ruby

def fizz_buzz(number)
  if number % 3 == 0 && number % 5 == 0
    puts 'FizzBuzz'
  elsif number % 3 == 0
    puts 'Fizz'
  elsif number % 5 == 0
    puts 'Buzz'
  else
    puts number
  end
end

(1..100).each do |number|
  print fizz_buzz(number)
end
