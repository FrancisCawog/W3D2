class Board
    attr_reader :card

    def initialize(num)
        @grid = Array.new(num) {Array.new(num, " ")}
        @card_numbers = num*2
    end

    def create_cards
        count = 0
        arr = []
        while count < @card_numbers
            arr << Card.new(count)
            count += 1
        end
    end

    def randomize_cards
        self.create_cards.each do |card|
            count = 0
            while @grid.flatten.any? {|ele| ele == " "} && count < 2
                row = rand(0...@grid.length)
                col = rand(0...@grid.length)
                if @grid[row][col] == " "
                    @grid[row][col] = card
                    count += 1
                end
            end
        end
        @grid
    end

    end

    def populate
        card.randomize_cards
    end

    def [](position)
        row, col = position
        @grid[row][col]
    end





end
