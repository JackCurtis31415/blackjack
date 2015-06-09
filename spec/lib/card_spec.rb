
require_relative "../../lib/card"

describe Card do

  let(:seven_spades) {Card.new('7', "spades") }
  let(:eight_hearts) {Card. new('8', "hearts") }
  let(:ace_spades) {Card. new('ace', "spades") }
  let(:queen_clubs) {Card. new('queen', "clubs") }  

  describe 'card new checks' do
    it 'seven of spades' do
      card1 = seven_spades
      expect(card1.rank).to eq("7")
    end
    
    it 'spades suit' do
      card1 = seven_spades
      expect(card1.suit).to eq('spades')
    end

  end

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
  
end
