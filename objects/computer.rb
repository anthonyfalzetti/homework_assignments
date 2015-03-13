#!/usr/bin/env ruby

# This is a game to identifiy the risk level associated with surfing the web
# Simply run the program and answer yes or no.
# Try to get to the highest risk level you can
# and stop without corrupting your computer!
# Go Luck!
class Computer
  def initialize
    @question_number = 0
    @risk = 0
    question
  end

  def turn_on
    @risk = 0
    puts 'Welcome back. Your risk level is 0'
    question
  end

  def turn_off
    puts 'Good bye!'
  end

  def reboot
    turn_off
    turn_on
  end

  def surf_web
    @risk += rand(10) + 1
    risk_assessment
  end

  def die
    puts "You're system is corrupted...Risk level is #{@risk}.\n Game Over!"
  end

  def risk_assessment
    if @risk < 5
      puts "Antivirus has done it's job, current risk level is #{@risk}"
      question
    elsif @risk >= 5 && @risk < 10
      print "You caught a virus! You are at #{@risk} risk level."
      puts ' System is rebooting!'
      reboot
    else
      die
    end
  end

  def question
    @question_number += 1
    puts "You are at level #{@question_number}... Do you wish to continue?"
    @answer = gets.chomp
    answer
  end

  def answer
    if @answer.downcase == 'yes'
      surf_web
    elsif @answer.downcase == 'no'
      puts "Thank you for playing.\n Good Bye!"
    else
      puts 'Please answer yes or no'
      question
    end
  end
end

computer = Computer.new
computer
