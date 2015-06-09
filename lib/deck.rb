# coding: utf-8



class Deck
  attr_reader :deck

  def initialize
    @ranks = ['ace', '2', '3', '4', '5', '6', '7', '8', '9', 'jack', 'queen', 'king']
    @suits = ['♠', '♥', '♦', '♣']
    @deck = build_deck
  end

  def build_deck
    @deck = []
    @ranks.each do |rank|
      @suits.each do |suit|
        deck << Card.new(rank, suit)
      end
    end
    @deck
  end
                   
  def shuffle
    @deck.shuffle!
  end

  def get_card
    @deck.pop
  end

  def put_card(a_card)
    @deck << a_card
  end

  
end
