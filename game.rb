#Main page for game
#This class will start the game and call the right classes when required
require './player'

class Game
  attr_accessor :player

  def initialize(p1,p2)
    @players = [p1,p2]
    @player = @players[0]
  end

  def players_life 
    puts "P1: #{@players[0].life}/3 vs P2: #{@players[1].life}/3"
  end

  def next_player
    if @player == @players[0]
      @player = @players[1]
    else 
      @player = @players[0]
    end
  end

end