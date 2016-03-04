require 'pry'
require './Player.rb'
on_game = true
player1 = Player.new("Player1")
player2 = Player.new("Player2")
players = [player1, player2]

  players.each do |player|
    print "Hello , #{player.name}, what is your name ?"
    player_name = gets.chomp
    player.customize_name(player_name)
  end

  while (on_game)

      players.each do |player|

        num1 = rand(1..20)
        num2 = rand(1..20)
        math_signs = [:+, :-, :*, :/]
        randomized_math_sign = math_signs.sample
        puts "#{player.name}, what is #{num1} #{randomized_math_sign} #{num2}"
        player_answer = gets.chomp
        # binding.pry
        player.check_answer(num1, num2, randomized_math_sign, player_answer)
        # player.check
        if player.is_dead? 
          puts "#{player.name}, you lost the game!"     ###########################
          puts "Want a new game? enter yes to restart the game"
          player_answer = gets.chomp
          on_game = false if player_answer != "yes"
        end

      end

  end


