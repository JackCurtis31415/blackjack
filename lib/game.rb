require_relative './deck'
require_relative './hand'
require_relative './card'

# could detect low deck count and play out hand, new deck, reshuffle
# doubling down
# splitting
# automatically busting

class Game

  def initialize
    puts "Welcome to Blackjack!"
    @deck = Deck.new
    @dealer_hand = Hand.new
    @player_hand = Hand.new
  end


  def play_a_hand
    shuffle_deal_initial_hand
    dealer_down_card
    hit_or_stand_loop
    play_out_dealer_hand
    announce_hand_result
  end

  def shuffle_deal_initial_hand
    @deck.shuffle
    card = @deck.get_card
    @player_hand.accept_card(card)
    puts "Player was dealt #{card.to_s}"
    card = @deck.get_card
    @player_hand.accept_card(card)    
    puts "Player was dealt #{card.to_s}"
    puts "Player score: #{@player_hand.score}"    
  end

  def dealer_down_card
    card = @deck.get_card
    @dealer_hand.accept_card(card)
    puts "Dealer is showing #{card.to_s}"
  end
  
  def hit_or_stand_loop
    prompt = "(H/S): "
    puts "Hit or stand? "

    print prompt

    while user_input = gets.chomp # loop while getting user input
      user_input.downcase

      case user_input
      when "h"
        card = @deck.get_card
        @player_hand.accept_card(card)
        puts ""
        puts "Player was dealt #{card.to_s}"
        puts "Player score: #{@player_hand.score}"
        puts "Hit or stand? "
        print prompt
      when "s"
        break 
      else
        puts "Please select either H or S"
        print prompt # print the prompt, so the user knows to re-enter input
      end
    end

    
  end
  
  def play_out_dealer_hand
    while @dealer_hand.score < 17
      card = @deck.get_card
      @dealer_hand.accept_card(card)    
      puts "Dealer was dealt #{card.to_s}"
      puts "Dealer score: #{@dealer_hand.score}"
    end
    puts "Dealer stands on #{@dealer_hand.score}"
  end

  def announce_hand_result
    if @player_hand.score > 21
      puts "Player busts! Dealer wins hand."
    elsif @dealer_hand.score > 21
      puts "Dealer busts! Player wins hand."
    elsif (@player_hand.score > @dealer_hand.score) 
      puts "Player wins the hand!"
    elsif (@dealer_hand.score > @player_hand.score)
      puts "Dealer wins the hand."
    else
      puts "Dealer and player push."
    end         
  end

end
  
