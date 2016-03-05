require 'pry'
require './Game.rb'
require './Player.rb'
game = Game.new(Player.new("Player1"), Player.new("Player2"))


game.set_players_name

while (game.on)
  game.ask_and_check_answer
end
