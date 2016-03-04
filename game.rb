require 'pry'
@player1_lives = 3
@player2_lives = 3

game_begin = true

print "Player 1, What is your name? "
player1_name = gets.chomp
print "Player 2, What is your name? "
player2_name = gets.chomp
while(game_begin)
  number1 = rand(1..20)
  number2 = rand(1..20)
  math_signs = [:+, :-, :*, :/]
  randomized_math_sign = math_signs.sample.to_s
  # binding.pry
  correct_answer = number1.send(randomized_math_sign, number2)
  print "#{player1_name}, What does #{number1} #{randomized_math_sign} #{number2} equal?"
  user_answer = gets.chomp.to_i
  if user_answer != correct_answer
    @player1_lives -= 1
    puts "Incorrect Answer"
    puts "#{player1_name} :#{@player1_lives}"
    puts "#{player2_name}: #{@player2_lives}"
  end

  if @player1_lives == 0
    puts "#{player1_name}, You lost! #{player2_name} won by #{@player2_lives} points"
    print "Do you want to play Again? Enter yes or no "
    user_response = gets.chomp.downcase
    if user_response == "yes"
      @player1_lives = 3
      @player2_lives = 3
      redo
    else
      game_begin = false
      break
    end
  end

  number1 = rand(1..20)
  number2 = rand(1..20)
  math_signs = [:+, :-, :*, :/]
  randomized_math_sign = math_signs.sample
 
  correct_answer = number1.send(randomized_math_sign, number2)
  print "#{player2_name}, What does #{number1} #{randomized_math_sign} #{number2} equal?"
  user_answer = gets.chomp.to_i

  if user_answer != correct_answer
    @player2_lives -= 1
    puts "Incorrect Answer"
    puts "#{player1_name} :#{@player1_lives}"
    puts "#{player2_name}: #{@player2_lives}"
  end

  if @player2_lives == 0
    puts "#{player2_name}, You lost! #{player1_name} won by #{@player1_lives} points"
    print "Do you want to play Again? Enter yes or no "
    user_response = gets.chomp.downcase
    if user_response == "yes"
      @player1_lives = 3
      @player2_lives = 3
      redo
    else
      game_begin = false
      break
    end
  end

  # if @player2_lives == 0
  #   puts "#{player2_name}, You lost! #{player1_name} won by #{@player1_lives} points"
  #   game_begin = false
  #   break
  # end

end 