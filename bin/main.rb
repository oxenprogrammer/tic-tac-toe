#!/usr/bin/env ruby
# Create the token and the board
tokens = %w[X O]
board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
#ask player to enter their name
puts 'Please enter your name player 1'
$player1 = gets.chomp
puts "welcome #{$player1}"
puts 'Please enter your name player 2'
$player2 = gets.chomp
puts "welcome #{$player2}"

# Invite users to enter their name and welcome them
def greetings(tokens)
  puts 'Welcome to the Tic Tac Toe game'
  puts 'Please enter your name player 1'
  player1 = gets.chomp
  puts "welcome #{player1}"
  puts 'Please enter your name player 2'
  player2 = gets.chomp
  puts "welcome #{player2}"
  # Ask Player 1 to choose a token and assign a token to player 2
  puts "#{player1} choose your destiny token X or O"
  player1_token = gets.chomp
  if player1_token == tokens[0]
    (puts "#{player1} will use #{tokens[0]} and #{player2} will use #{tokens[1]}")
  elsif player1_token == tokens[1]
    (puts "#{player1} will use #{tokens[1]} and #{player2} will use #{tokens[0]}")
  else
    puts 'Invalid token'
  end
  puts "Now #{player1} and #{player2} let's begin"
end

# Create the board
def board_display(board)
  puts 'Current board: '
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Ask user to player
def player_move(board)
  puts 'Choose a number between 1 and 9'
  move = gets.chomp.to_i
  while move < board.size
    move > 9 ? (puts 'Wrong move') : (puts 'Your turn next player')
    puts "player put the token at #{move}"
    move = gets.chomp.to_i
  end
  puts 'Game over'
end

# Call the methods
greetings(tokens)
board_display(board)
player_move(board)
