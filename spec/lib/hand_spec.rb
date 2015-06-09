
require_relative "../../lib/hand"

describe Hand do

  let(:seven_spades) {Card.new('7', "spades") }
  let(:eight_hearts) {Card. new('8', "hearts") }
  let(:ace_spades) {Card. new('ace', "spades") }
  let(:queen_clubs) {Card. new('queen', "clubs") }  

  describe 'hand new checks' do
    it 'empty hand is empty array' do
      hand1 = Hand.new
      expect(hand1.hand.class).to eq(Array)
      expect(hand1.hand.size).to eq(0)      
    end

  end

  describe '#accept_card' do
    it 'push a card of cards' do
      hand1 = Hand.new
      hand1.accept_card(seven_spades)
      expect(hand1.hand[0].class).to eq(Card)
      expect(hand1.hand.size).to eq(1)
      expect(hand1.hand[0].suit).to eq('spades')            
    end
    it 'push two cards' do
      hand1 = Hand.new
      hand1.accept_card(seven_spades)
      hand1.accept_card(ace_spades)      
      expect(hand1.hand[0].class).to eq(Card)
      expect(hand1.hand.size).to eq(2)
      expect(hand1.hand.include?(ace_spades)).to eq(true)
      expect(hand1.hand.include?(eight_hearts)).to eq(false)                          
    end

  end

    describe '#score' do
    it 'score a card hand' do
      hand1 = Hand.new
      hand1.accept_card(seven_spades)
      hand1.accept_card(queen_clubs)
      expect(hand1.score).to eq(17)
    end
    it 'score a hard ace' do
      hand1 = Hand.new
      hand1.accept_card(seven_spades)
      hand1.accept_card(ace_spades)
      hand1.accept_card(queen_clubs)            
      expect(hand1.score).to eq(18)
    end
    it 'score a soft ace' do
      hand1 = Hand.new
      hand1.accept_card(eight_hearts)
      hand1.accept_card(ace_spades)
      expect(hand1.score).to eq(19)
    end

  end

end
