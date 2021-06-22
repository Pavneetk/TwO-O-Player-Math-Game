#This class will store player data
# set name and default of 3 lives when starting
class Player
  attr_reader :id
  attr_accessor :life
  def initialize(id)
    @id = id
    @life = 3
  end
end
