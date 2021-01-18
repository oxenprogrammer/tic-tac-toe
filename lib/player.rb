class Player
  attr_accessor :token
  attr_reader :name

  def intialize(name)
    @name = name
  end

  def player_token(token)
    @token = token
  end

  def self.player_turn(player1, player2, updated_board)
    counter = updated_board.board_counter
    if counter.odd?
      player1
    else
      player2
    end
  end
end
