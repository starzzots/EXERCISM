module Chess
  # Define the ranks and files of the chess board
  RANKS = 1..8
  FILES = 'A'..'H'

  # Method to check if a square is valid
  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file)
  end

  # Method to get the player's nickname
  def self.nickname(first_name, last_name)
    # Get the first 2 characters of first_name and last 2 characters of last_name
    first_part = first_name[0, 2].upcase
    last_part = last_name[-2, 2].upcase
    first_part + last_part
  end

  # Method to create a move message
  def self.move_message(first_name, last_name, square)
    rank = square[1].to_i   # Extracting the rank (number part)
    file = square[0]        # Extracting the file (letter part)
    
    # Generate nickname
    player_nickname = nickname(first_name, last_name)

    # Check if the move is valid
    if valid_square?(rank, file)
      "#{player_nickname} moved to #{square}"
    else
      "#{player_nickname} attempted to move to #{square}, but that is not a valid square"
    end
  end
end

# Example usage:
puts Chess::RANKS # => 1..8
puts Chess::FILES # => 'A'..'H'
puts Chess.valid_square?(1, 'A') # => true
puts Chess.nickname("John", "Doe") # => "JOOE"
puts Chess.move_message("John", "Doe", "A1") # => "JOOE moved to A1"
puts Chess.move_message("Jane", "Smith", "A9") # => "JAITH attempted to move to A9, but that is not a valid square"
