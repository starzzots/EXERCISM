module Blackjack
  # Method to parse the value of a card
  def self.parse_card(card)
    case card
    when "ace"
      11
    when "two"
      2
    when "three"
      3
    when "four"
      4
    when "five"
      5
    when "six"
      6
    when "seven"
      7
    when "eight"
      8
    when "nine"
      9
    when "ten", "jack", "queen", "king"
      10
    else
      0 # For any other card
    end
  end

  # Method to determine the card range
  def self.card_range(card1, card2)
    total_value = parse_card(card1) + parse_card(card2)

    case total_value
    when 4..11
      "low"
    when 12..16
      "mid"
    when 17..20
      "high"
    when 21
      "blackjack"
    else
      "invalid"
    end
  end

  # Method to determine the first turn decision
  def self.first_turn(card1, card2, dealer_card)
    total_value = parse_card(card1) + parse_card(card2)

    # Decision logic based on the game rules
    if card1 == "ace" && card2 == "ace"
      "P" # Split
    elsif total_value == 21
      if ["ace", "ten", "jack", "queen", "king"].include?(dealer_card)
        "S" # Stand
      else
        "W" # Automatically win
      end
    elsif (17..20).include?(total_value)
      "S" # Stand
    elsif (12..16).include?(total_value)
      if parse_card(dealer_card) >= 7
        "H" # Hit
      else
        "S" # Stand
      end
    elsif total_value <= 11
      "H" # Hit
    else
      "invalid"
    end
  end
end

# Example usage:
puts Blackjack.parse_card("ace")          # => 11
puts Blackjack.card_range("ten", "king")  # => "high"
puts Blackjack.first_turn("ace", "ace", "two") # => "P"
