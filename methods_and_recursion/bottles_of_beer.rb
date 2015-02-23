#!/usr/bin/env ruby

def ending(number)
  lyrics = <<lyrics
#{number} bottle of beer on the wall, #{number} bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall.\n
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
lyrics
  print lyrics
end

def single_bottle(number)
  lyrics = <<lyrics
#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number - 1} bottle of beer on the wall.\n
lyrics
  print lyrics
end

def chorus(number)
  lyrics = <<lyrics
#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n
lyrics
  print lyrics
end

(1..100).reverse_each do |number|
  if number > 2 then chorus(number)
  elsif number == 2 then single_bottle(number)
  else ending(number)
  end
end
