class Hand
  
  attr_reader :hand

  def initialize
    @hand = []
  end

  def score
    score = 0
    n_aces = 0
    hand.each do |card|
      if card.is_ace?
        n_aces += 1
        score += card.value        
      else
        score += card.value
      end
    end

    # let's convert aces-11 to aces-1 if need be
    while score > 21
      if n_aces > 0
        score = score - 10
        n_aces -= 1
      else
        break
      end
    end
    score
  end

  def accept_card(card)
    hand << card
  end
  

end



