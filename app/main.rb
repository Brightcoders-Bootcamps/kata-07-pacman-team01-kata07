require 'tty/reader'
require_relative 'models/control'
reader = TTY::Reader.new

reader.subscribe(Control.new)

puts 'Press a key (or Ctrl-X to exit)'
loop do
  char = reader.read_keypress
  exit if char == ?\C-x
end
