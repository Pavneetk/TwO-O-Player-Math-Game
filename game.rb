#Main page for game
#This class will start the game and call the right classes when required
require './player'

class Game

  def initialize(p1,p2)
    @players = [p1,p2]
    player = @players[0]
  end
  def life 
    puts "P1: #{@players[0].life}/3 vs P2: #{@players[1].life}/3"
  end



end