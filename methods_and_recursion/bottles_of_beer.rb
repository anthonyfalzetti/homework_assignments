#!/usr/bin/env ruby

def chorus(number, bottle, n_number, n_bottle)
  <<lyrics
#{number.capitalize} #{bottle} of beer on the wall, #{number} #{bottle} of beer.
Take one down and pass it around, #{n_number} #{n_bottle} of beer on the wall.

lyrics
end

def ending(number, bottle, n_number, n_bottle)
  <<ending
#{number.capitalize} #{bottle} of beer on the wall, #{number} #{bottle} of beer.
Go to the store and buy some more, #{n_number} #{n_bottle} of beer on the wall.

ending
end

def bottles(number)
  if number == 1
    'bottle'
  else
    'bottles'
  end
end

def number(number)
  if number == 0
    'no more'
  else
    number.to_s
  end
end

def new_bottles(number)
  number -= 1
  if number == 1
    'bottle'
  else
    'bottles'
  end
end

def new_number(number)
  if number != 0
    number -= 1
    if number == 0
      'no more'
    else
      number
    end
  else
    'no more'
  end
end

def no_more(numbers)
  number = number(numbers)
  bottle = bottles(numbers)
  new_number = new_number(numbers + 100)
  new_bottles = new_bottles(numbers + 100)
  puts ending(number, bottle, new_number, new_bottles)
end

def song(numbers)
  number = number(numbers)
  bottle = bottles(numbers)
  new_number = new_number(numbers)
  new_bottles = new_bottles(numbers)
  if numbers == 0
    no_more(numbers)
  else
    puts chorus(number, bottle, new_number, new_bottles)
  end
end

def number_of_beers(number)
  if number > 0
    number -= 1
    song(number)
    number_of_beers(number)
  else
    ''
  end
end

number_of_beers(100)
