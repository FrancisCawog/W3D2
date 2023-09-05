class Card

    attr_reader :face_value

    def initialize(face_value)
        @face_value = face_value
        @face_status = "_"
        @board = Board.new
    end

    def hide(position)


    end


    def [](position)
        row, col = position
        @board[row][col]
    end



end
