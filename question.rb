#generate a random math question

class Question
  attr_reader :answer
  def initialize 
    @answer = nil
  end

  def rand_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    @answer = num1 + num2
  end

end
