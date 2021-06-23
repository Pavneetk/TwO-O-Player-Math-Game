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


# random question
 q = Question.new()
# q.rand_question
# puts q.answer

#Start Game
game = Game.new(player1, player2)
puts "----- NEW GAME -----"

while player1.life >= 1 && player2.life >=1 do
 puts "----- NEW TURN -----"
 puts "Player #{game.player.id}: #{q.rand_question}" 
 input_answer = gets.chomp.to_i

  unless input_answer == q.answer
   game.player.lose_life
   puts "Player #{game.player.id}: Seriously? No!" 
  else
   puts "Player #{game.player.id}: YES! You are correct."
  end

 game.players_life
 game.next_player
end
puts "Player #{game.player.id} wins with a score of #{game.player.life}/3"
puts "----- GAME OVER -----"
puts "Good Bye!"