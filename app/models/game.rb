require_relative 'maze'

class Game
  def initialize
    @maze = Maze.new
    @level = @maze.get_level(1)
  end

  def print_maze
    system('clear')
    @level.each do |column|
      column.each { |row| print(row.to_s + ' ') }
      puts('')
    end
  end
end
