class Player
  attr_reader :name, :token

  def intialize(name, token)
    @name = name
    @token = token
  end

  def player_info
    "Player is #{name} and got the token #{token}."
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