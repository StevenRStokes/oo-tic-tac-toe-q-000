class TicTacToe
  # def initialize
 #     @board = Array.new(9, " ")
 #  end

  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [6,4,2], [0,4,8]]

def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end

  def current_player
    @current_player
  end


  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end

  def turn_count
    @turn_count
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

def input
  @input = gets
end

  def input
    @input
  end


  def location
    location = @input.to_i-1
  end

  def location
    @location
  end

    def position_taken?
      @board[@location] != " " && @board[@location] != ""
    end


  def valid_move?
  @input.to_i.between?(1,9) && !position_taken?
end

def move
  puts "#{@current_player} is the current player"
  puts "Please enter 1-9:"
  input
  if valid_move?
    @board[@input.to_i-1] = @current_player
  else
    move
  end
  display_board
end

