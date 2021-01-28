require 'colorize'

class PacMan
  attr_accessor :position_x, :position_y

  def initialize(x, y)
    @position_x = x
    @position_y = y
    @state = :off
  end

  def to_s
    @state == :on ? 'ᗤ'.yellow : 'ᗞ'.yellow
  end
end
