module Players
  class Human < Player

    def move(board)
     puts "Choose a move from 1-9?"
     gets.strip
    end

  end

end
