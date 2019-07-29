require 'pry'
class Deck
 attr_reader :cards

    def initialize
        @cards = []
        suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
        rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit.each do |s|
            rank.each do |r|
                @cards << Card.new(s, r)
            end
        end
    end
        #     for suit in ["Hearts", "Clubs", "Diamonds", "Spades"] do
        #     for rank in ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] do
        #         @cards << Card.new(suit, rank)
        #     end
        # end

    def choose_card
        @cards.delete_at(rand(@cards.length))
    end
end

#rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
#suit = ["Hearts", "Clubs", "Diamonds", "Spades"]


class Card
    attr_reader :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end
end
