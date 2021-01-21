require 'tty/reader'
require_relative 'models/control'
require_relative 'models/maze'
require_relative 'models/game'
# reader = TTY::Reader.new

# reader.subscribe(Control.new)

# puts 'Press a key (or Ctrl-X to exit)'
# loop do
#   char = reader.read_keypress
#   exit if char == ?\C-x
# end

game = Game.new
game.print_maze
