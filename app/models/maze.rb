require_relative 'objects/pacman'
require_relative 'objects/wall'
require_relative 'objects/power_pellets'

class Maze
  LEVELS = {
    1 => 'app/static/level-1.txt',
    2 => 'app/static/level-2.txt'
  }.freeze

  OBJECTS = {
    'V' => PacMan,
    '-' => Wall,
    '.' => PowerPellets
  }.freeze

  def get_path(level)
    LEVELS.keys.include?(level) ? LEVELS[level] : LEVELS[1]
  end

  def get_level(level)
    path = get_path(level)
    File.open(path, 'r').readlines.each_with_object([]) do |line, column|
      column << line.chars.each_with_object([]) do |char, row|
        row << OBJECTS[char].new if char != "\n"
      end
    end
  end
end
