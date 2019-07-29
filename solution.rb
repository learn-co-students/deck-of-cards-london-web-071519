class Deck
    attr_accessor :cards

    def initialize()

        @cards = []
        rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

        suit.each do |s|
            rank.each do |r|
                @cards << Card.new(r, s)
            end 
        end

     
    
    end

    def choose_card
        rand_card = @cards.sample
        index = @cards.index(rand_card)
        @cards.delete_at(index)
    end
end



class Card
    attr_accessor :rank, :suit, :deck
    @@all = []

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
        @@all << self
    end

    def self.all
        @@all
    end

end
