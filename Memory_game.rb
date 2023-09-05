class Board
    attr_reader :card

    def initialize(num)
        @grid = Array.new(num) {Array.new(num, " ")}
    end



    end

    def populate(card)
        puts "Here if your card: #{card}"
    end

    def [](position)
        row, col = position
        @board[row][col]
    end





end
