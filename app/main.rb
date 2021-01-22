require 'tty/reader'
require_relative 'models/control'
require_relative 'models/game'

control = Control.new(Game.new)
reader = TTY::Reader.new
reader.subscribe(control)

puts 'Press a key to start the PAC-MAN(or Ctrl-X to exit)'
loop do
  char = reader.read_keypress
  exit if char == ?\C-x
end
