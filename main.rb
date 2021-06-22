#Will print out new questions, handle user I/O
#manages current player, question, answer inputted, correct answer, 

# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './game'
require './player'
require './question'

#Set Players
player1 = Player.new(1)
player2 = Player.new(2)


#Start Game

# random question
q = Question.new()
q.rand_question
puts q.answer
