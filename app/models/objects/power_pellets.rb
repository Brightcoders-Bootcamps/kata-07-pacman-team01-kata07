require 'colorize'

class PowerPellets
  attr_accessor :position_x, :position_y

  def initialize(x, y)
    @position_x = x
    @position_y = y
  end

  def to_s
    '·'.yellow
  end
end
