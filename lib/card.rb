
class Card

  attr_reader :suit, :rank

  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end

  def ==(another_card)
    self.rank == another_card.rank
    self.suit == another_card.suit
  end

  def is_ace?
    return true if rank == 'ace'
    false
  end

  def is_face_card?

    if rank == 'jack' || rank == 'queen' || rank == 'king'
      true
    else
      false
    end
  end

  def to_s
    "#{@rank}#{@suit}"
  end
  
  def value
    if is_face_card?
      10
    elsif is_ace?
      11
    else
      rank.to_i
    end
  end

end





