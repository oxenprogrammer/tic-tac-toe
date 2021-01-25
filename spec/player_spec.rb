require_relative './../lib/player'

describe PlayerMove do
  player = PlayerMove.new
  player_token = 'X'

  loss_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  win_board = %w[X X X X X X X X X]

  describe '#methods' do
    it 'should intantiate a class' do
      expect(player).to be_a_kind_of Object
    end
    it 'should return true for any WIN COMBOs' do
      expect(player.win?(win_board, player_token)).to be true
    end
    it 'should return true for any verical' do
      expect(player.win_vertical?(win_board, player_token)).to be true
    end
    it 'should return false for any verical' do
      expect(player.win_vertical?(loss_board, player_token)).to be false
    end
    it 'should return true for any horizontal' do
      expect(player.win_horizontal?(win_board, player_token)).to be true
    end
    it 'should return false for any horizontal' do
      expect(player.win_horizontal?(loss_board, player_token)).to be false
    end
    it 'should return true for any diagonal' do
      expect(player.win_diagonal?(win_board, player_token)).to be true
    end
    it 'should return false for any diagonal' do
      expect(player.win_diagonal?(loss_board, player_token)).to be false
    end
  end
end
