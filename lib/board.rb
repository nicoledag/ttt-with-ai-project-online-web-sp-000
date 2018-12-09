require 'pry'
class Board

  attr_accessor :cells

  def initialize
    reset!
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(input)
    @cells[input.to_i-1]
   #takes the cells array and returns user_input ["O", " ", " ", " ", "X", " ", " ", " ", "X"]
 end

 def full?
   @cells.all? { |character|  character == "X" || character == "O"  }
   #any? returns true if all conditions are meet.
 end

 def turn_count
  @cells.count {|char| char == "X" || char == "O"}
 end

 def taken?(input)
   binding.pry
   position(input) == "X"  || position(input) == "O"
 end

 def valid_move?(input)
   input.to_i.between?(1, 9) && !taken?(input)
 end

 def update(input, player)
  @cells[input.to_i-1] = player.token
 end

end
