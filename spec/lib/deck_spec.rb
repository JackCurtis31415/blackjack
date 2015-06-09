
require_relative "../../lib/deck"
require 'pry'

describe Deck do

  let(:seven_spades) {Card.new('7', "spades") }
  let(:eight_hearts) {Card. new('8', "hearts") }
  let(:ace_spades) {Card. new('ace', "spades") }
  let(:queen_clubs) {Card. new('queen', "clubs") }  

  describe 'Deck new checks' do

    it 'newly instanced deck' do
      deck1 = Deck.new
      expect(deck1.deck.include?(seven_spades)).to eq(true)
      expect(deck1.deck.include?(eight_hearts)).to eq(true)
      expect(deck1.deck.include?(ace_spades)).to eq(true)                    
    end             
    
    it 'new deck does not include' do
      deck1 = Deck.new
      card = Card.new('never', 'quonts')
      expect(deck1.deck.include?(card)).to eq(false)
    end

    it 'deck after shuffle returns an array' do
      deck1 = Deck.new
      expect(deck1.deck.shuffle.class).to eq(Array)
    end

  end
end

=begin
  describe 'card methods' do
    it '#is_ace?' do
      card1 = seven_spades
      expect(card1.is_ace?).to eq(false)
    end

    it '#is_ace?' do
      card1 = ace_spades
      expect(card1.is_ace?).to eq(true)
    end

    it '#is_face_card?' do
      card1 = ace_spades
      expect(card1.is_face_card?).to eq(false)
    end
    it '#is_face_card?' do
      card1 = queen_clubs
      expect(card1.is_face_card?).to eq(true)
    end
    it '#value' do
      card1 = ace_spades
      expect(card1.value).to eq(11)
    end
    it '#value?' do
      card1 = queen_clubs
      expect(card1.value).to eq(10)
    end
    it '#value?' do
      card1 = seven_spades
      expect(card1.value).to eq(7)
    end
    
  end
=end
  


