class PacMan
  def initialize
    @state = :off
  end

  def to_s
    @state == :on ? 'ᗤ'.yellow : 'ᗞ'.yellow
  end
end
