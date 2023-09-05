class Card

    attr_reader :face_value

    def initialize(face_value)
        @face_value = face_value
        @face_status = "_"
    end

    # def hide
    #     @grid.populate.map do |row|
    #         row.map do |ele|
    #             if ele != "_"
    #                 ele = '_'
    #             end
    #         end
    #     end
    # end

    def randomize_cards
        arr = [1..(@grid.length * 2)]
        arr.each do |num|
            count = 0
            while @grid.flatten.any? {|ele| ele == " "} && count < 2 
                row = rand(0...@grid.length)
                col = rand(0...@grid.length)
                if @grid[row][col] == " " 
                    @grid[row][col] = num 
                    count += 1
                end
            end
        end
    end



end
