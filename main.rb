require 'pry'
require './Game.rb'
require './Player.rb'
game = Game.new(Player.new("Player1"), Player.new("Player2"))


game.set_players_name

while (game.on)
  game.ask_and_check_answer
end

# game.players.each do |player|

# end
  
  # while (game.on)

  #     game.players.each do |player|



  #       # player_answer = gets.chomp
  #       # binding.pry
  #       # player.check_answer(num1, num2, randomized_math_sign, player_answer)
  #       # player.check
  #       # if player.is_dead?

  #         # puts "#{player.name}, you lost the game!"     ###########################
  #         # puts "Want a new game? enter yes to restart the game"
  #         # player_answer = gets.chomp

  #         # on_game = false if player_answer != "yes" # ongame should be part of game instance
  #       # end

  #     end

  # end


