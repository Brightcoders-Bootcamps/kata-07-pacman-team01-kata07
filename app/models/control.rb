class Control
  def initialize
    @moves = {
      'w' => method(:move_up),
      'a' => method(:move_left),
      's' => method(:move_down),
      'd' => method(:move_right)
    }
  end

  def keypress(event)
    @moves[event.value].call
  rescue NoMethodError => e
    puts 'Utiliza W, A, S, D para moverte'
  end

  def move_up
    puts('w')
  end

  def move_left
    puts('a')
  end

  def move_down
    puts('s')
  end

  def move_right
    puts('d')
  end
end
