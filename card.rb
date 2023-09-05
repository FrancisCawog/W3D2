class Card

    attr_reader :face_value

    def initialize(face_value)
        @face_value = face_value
        @face_status = "_"
        #@board = Board.new
    end

    def hide
        @board.populate.map do |row|
            row.map do |ele|
                if ele != "_"
                    ele = '_'
                end
            end
        end
    end

    def randomize_cards
        arr =



end
