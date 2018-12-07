module Players
  class Human < Player

    def move(char)
     puts "Choose a move from 1-9?"
     input = gets.strip
    end

  end

end
