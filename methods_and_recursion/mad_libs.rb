#!/usr/bin/env ruby

def ask_question(question)
  puts question
  gets.chomp
end

first_adjective = ask_question('Give me an adjective:')
second_adjective = ask_question('Give me another adjective:')
first_noun = ask_question('Give me a noun:')
secound_noun = ask_question('Give me another noun:')
first_plural_noun = ask_question('Give me a plural noun:')
first_game = ask_question('Give me the name of a game:')
second_plural_noun = ask_question('Give me another plural noun:')
first_ing_verb = ask_question("Give me a verb ending in 'ing':")
second_ing_verb = ask_question("Give me another verb ending in 'ing':")
third_plural_noun = ask_question('Give me another plural noun:')
third_ing_verb = ask_question("Give me another verb ending in 'ing':")
third_noun = ask_question('Give me another noun:')
first_plant = ask_question('Give me a plant name:')
first_body_part = ask_question('Give a body part:')
first_place = ask_question('Give me the name of a place:')
fourth_ing_verb = ask_question("Give me another verb ending in 'ing':")
third_adjective = ask_question('Give me another adjective:')
first_number = ask_question('Give me a number: ')
fourth_plural_noun = ask_question('Give me another plural noun:')

mad_lib = <<mad_lib
A vacation is when you take a trip to some #{first_adjective} place
with your #{second_adjective} family. Usually you go to some place
that is near a/an #{first_noun} or up on a/an #{secound_noun}.
A good vacation place is one where you can ride #{first_plural_noun}
or play #{first_game} or go hunting for #{second_plural_noun}. I like
to spend my time #{first_ing_verb} or #{second_ing_verb}.
When parents go on a vacation, they spend their time eating
three #{third_plural_noun} a day, and fathers play golf, and mothers
sit around #{third_ing_verb}. Last summer, my little brother
fell in a/an #{third_noun} and got poison #{first_plant} all
over his #{first_body_part}. My family is going to go to (the)
#{first_place}, and I will practice #{fourth_ing_verb}. Parents
need vacations more than kids because parents are always very
#{third_adjective} and because they have to work #{first_number}
hours every day all year making enough #{fourth_plural_noun} to pay
for the vacation.
mad_lib

puts mad_lib
