class Control
  def initialize(game)
    @game = game
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
    @game.move_up
  end

  def move_left
    @game.move_left
  end

  def move_down
    @game.move_down
  end

  def move_right
    @game.move_right
  end
end
