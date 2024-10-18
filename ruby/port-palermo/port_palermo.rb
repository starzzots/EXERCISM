module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE
  def self.get_identifier(port_name)
    # Take the first four letters of the port name, upcase them, and convert to a symbol
    port_name[0, 4].upcase!.to_sym
  end

  # Method to determine the terminal for a ship
  def self.get_terminal(ship_identifier)
    # Check the cargo type of the ship identifier
    cargo_type = ship_identifier.to_s[0, 3] # Get the first three letters

    # Determine terminal based on cargo type
    if cargo_type == 'OIL' || cargo_type == 'GAS'
      :A # Dock at terminal A
    else
      :B # Dock at terminal B
    end
  end
end


# Example usage:
puts Port::IDENTIFIER # => :PALE
puts Port.get_identifier("Hamburg") # => :HAMB
puts Port.get_terminal(:OIL123) # => :A
puts Port.get_terminal(:COT456) # => :B