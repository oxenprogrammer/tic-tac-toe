class Tictactoe
  @@winning_moves [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ]

  class Board < Tictactoe
    attr_reader :board

    @@invalid_move = []

    def intialize
      @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end

    def display_board
      puts 'Tic tac toe board: '
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts '-----------'
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts '-----------'
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def update_invalid_move
      @@invalid_move.push(num)
    end
  end

end