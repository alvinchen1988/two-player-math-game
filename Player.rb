class Player 

  attr_accessor :name
  attr_reader :score

  def is_dead?
    return @score == 0? true : false
  end

  def initialize(name='', score = 3)
    @name = name
    @score = score
  end

  def customize_name(name)
    @name = name
  end


  def check_answer(num1, num2, operator, answer)
    if (answer !=  num1.send(operator, num2).to_s)
      @score -= 1
      puts "#{@name}, incorrect answer. lost 1 point. #{@score} points left"
    else
      puts "#{@name}, You are right. #{@score} points left"
    end
  end 

end