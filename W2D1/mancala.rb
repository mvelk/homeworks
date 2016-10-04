class Board

  def initialize
    @board = Array.new(14, 0)
    set_board
  end

  def set_board
    @board.each_with_index do |slot, idx|
      next if idx == 0 || idx == 7
      @board[idx] +=  4
    end
  end

  def pick_and_place

  end
end

class Player
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def get_move
    puts "Pick the slot whose stones you want to pick and place."
  end
end

class Game
  def initialize(name1, name2)
    @board = Board.new
    @players = [Player.new(name1), Player.new(name2)]
  end
  def play_game
    until over?
      play_turn
    end
    announce_winner
  end

  def announce_winner

  end

  def play_turn

  end

  def switch_players
    @players.rotate!  
  end

end
