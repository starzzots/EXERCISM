# This is the AssemblyLine class
class AssemblyLine
  # A constant hash that tells us the success rate for each speed
  SUCCESS_RATE = {
    1 => 1.0,  # 100% success
    2 => 1.0,  # 100% success
    3 => 1.0,  # 100% success
    4 => 1.0,  # 100% success
    5 => 0.9,  # 90% success
    6 => 0.9,  # 90% success
    7 => 0.9,  # 90% success
    8 => 0.9,  # 90% success
    9 => 0.8,  # 80% success
    10 => 0.77 # 77% success
  }

  # The base number of cars produced at speed 1
  BASE_PRODUCTION = 221 

  # The initialize method sets the speed when a new object is created
  def initialize(speed)
    @speed = speed  # Store the speed as an instance variable
  end

  # This method calculates the production rate per hour
  def production_rate_per_hour
    # Calculate total production at the current speed
    total_production = BASE_PRODUCTION * @speed
    
    # Adjust the total production by the success rate
    successful_production = total_production * SUCCESS_RATE[@speed]
    
    # Return the successful production rate as a float
    successful_production
  end

  # This method calculates how many completed cars are produced per minute
  def working_items_per_minute
    # Get the working items produced per hour
    working_items_per_hour = production_rate_per_hour
    
    # Convert the hourly production to a per-minute rate
    # We divide by 60 and use to_i to get an integer
    (working_items_per_hour / 60).to_i
  end
end

# Example usage:
# Create a new assembly line with a speed of 6
assembly_line = AssemblyLine.new(6)

# Print the production rate per hour
puts "Production rate per hour: #{assembly_line.production_rate_per_hour}"  # => 1193.4

# Print the working items produced per minute
puts "Working items per minute: #{assembly_line.working_items_per_minute}"  # => 19