require_relative 'objects/pacman'
require_relative 'objects/wall'
require_relative 'objects/power_pellets'

class Maze
  LEVELS = {
    1 => './static/level-1.txt',
    2 => './static/level-2.txt'
  }.freeze

  OBJECTS = {
    'V' => PacMan,
    '-' => Wall,
    '.' => PowerPellets
  }.freeze

  attr_accessor :pacman

  def initialize
    @pacman
  end

  def get_path(level)
    LEVELS.keys.include?(level) ? LEVELS[level] : LEVELS[1]
  end

  def get_level(level)
    path = get_path(level)
    File.open(path, 'r').readlines.each_with_object([]) do |line, column|
      column << line.chars.each_with_object([]) do |char, row|
        if char != "\n"
          object = OBJECTS[char].new(column.size, row.size)
          add_objects(object, row)
        end
      end
    end
  end

  def add_objects(object, row)
    @pacman = object if object.instance_of? PacMan
    row << object
  end
end
