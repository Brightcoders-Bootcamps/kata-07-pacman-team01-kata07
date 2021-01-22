require_relative 'maze'

class Game
  def initialize
    @maze = Maze.new
    @level = @maze.get_level(1)
    @score = 0
  end

  def print_maze
    print_instructions
    @level.each do |column|
      column.each { |row| print(row.to_s + ' ') }
      puts('')
    end
  end

  def move_up
    print_maze
    puts('moviendo el pacman hacia la arriba')
  end

  def move_left
    print_maze
    puts('moviendo el pacman hacia la izquierda')
  end

  def move_down
    print_maze
    puts('moviendo el pacman hacia la abajo')
  end

  def move_right
    print_maze
    puts('moviendo el pacman hacia la derecha')
  end

  def validate; end

  def print_instructions
    system('clear')
    puts('🔴 Press a key (or Ctrl-X to exit) 🔴')
    puts('🎮 Use to W A S D to move 🎮')
    puts('🏆 SCORE: '.yellow + @score.to_s)
  end
end
