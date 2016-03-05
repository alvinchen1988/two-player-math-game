class Game
  attr_accessor :on, :players, :winner

  def initialize(player1, player2)
    @players = [player1, player2]
    @on = true
  end

  def restore_points
    self.players.each do |player|
      player.score = 3
    end
  end

  def take_inputs_from_user (question)
    puts question
    return gets.chomp
  end

  def set_players_name
    self.players.each do |player|
      name = take_inputs_from_user("#{player.name}, What is your name?")
      player.name = name
    end
  end

  def randomized_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    math_signs = [:+, :-, :*, :/]
    randomized_math_sign = math_signs.sample
    correct_answer = num1.send(randomized_math_sign, num2).to_s

    question = {
      num1: num1,
      num2: num2,
      math_sign: randomized_math_sign,
      correct_answer: correct_answer
    }
  end

  def ask_and_check_answer
    self.players.each do |player|
      ques = randomized_question
      player_answer = take_inputs_from_user("#{player.name}, what is #{ques[:num1]} #{ques[:math_sign]} #{ques[:num2]}")
      if player_answer != ques[:correct_answer]
        player.score -= 1
        puts "#{player.name}, incorrect answer. Lost 1 point. #{player.score} points left"
      else
        puts "#{player.name}, You're right! #{player.score} points left"
      end
      if player.score == 0
        result = take_inputs_from_user("#{player.name}, you lost the game! enter yes to restart ")
        if result == "yes"
          restore_points
        else
          self.on = false
          # break
          # redo
          break
        end
        break
      end
    end

  end
end