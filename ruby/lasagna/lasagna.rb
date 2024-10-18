# Define the Lasagna class
class Lasagna
  # Task 1: Define the expected oven time as a constant
  EXPECTED_MINUTES_IN_OVEN = 40

  # Task 2: Calculate remaining oven time
  def remaining_minutes_in_oven(actual_minutes)
    # Subtract actual minutes from expected time
    EXPECTED_MINUTES_IN_OVEN - actual_minutes
  end

  # Task 3: Calculate preparation time based on number of layers
  def preparation_time_in_minutes(number_of_layers)
    # Each layer takes 2 minutes to prepare
    number_of_layers * 2
  end

  # Task 4: Calculate total working time
  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    # Sum the preparation time and the time in the oven
    preparation_time = preparation_time_in_minutes(number_of_layers)
    preparation_time + actual_minutes_in_oven
  end
end

# Example usage:
lasagna = Lasagna.new

# Test the expected oven time
puts "Expected oven time: #{Lasagna::EXPECTED_MINUTES_IN_OVEN} minutes" # => 40

# Test remaining time in the oven
puts "Remaining time in oven: #{lasagna.remaining_minutes_in_oven(30)} minutes" # => 10

# Test preparation time
puts "Preparation time for 2 layers: #{lasagna.preparation_time_in_minutes(2)} minutes" # => 4

# Test total time
puts "Total time for 3 layers in oven for 20 minutes: #{lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 20)} minutes" # => 26



















class Lasagna2
  EXPECTED_MINUTES_IN_OVEN = 40
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    total = EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
    return total
    raise 'Please implement the Lasagna#remaining_minutes_in_oven method'
  end

  def preparation_time_in_minutes(layers)
    layers = layers * 2
    return layers
    raise 'Please implement the Lasagna#preparation_time_in_minutes method'
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    total = (number_of_layers * 2) + actual_minutes_in_oven
    return total
    raise 'Please implement the Lasagna#total_time_in_minutes method'
  end
  
end
