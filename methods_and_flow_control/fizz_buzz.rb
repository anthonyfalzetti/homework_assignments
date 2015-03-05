#!/usr/bin/env ruby

def fizz_buzz(number)
  if number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  elsif number % 3 == 0
    'Fizz'
  elsif number % 5 == 0
    'Buzz'
  else
    number
  end
end

(1..100).each do |number|
  puts fizz_buzz(number)
end
