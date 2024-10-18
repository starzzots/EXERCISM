# Define the Attendee class
class Attendee
  # Initialize method to set the height
  def initialize(height)
    @height = height   # Store the height as an instance variable
    @pass_id = nil     # Initialize pass_id to nil, as they don’t have a pass yet
  end

  # Getter method to return the height
  def height
    @height # Return the height
  end

  # Getter method to return the pass_id
  def pass_id
    @pass_id # Return the pass_id, which will be nil if not set
  end

  # Method to issue a pass
  def issue_pass!(pass_id)
    @pass_id = pass_id # Set the pass_id to the given value
    pass_id           # Return the pass_id
  end

  # Method to revoke the pass
  def revoke_pass!
    @pass_id = nil # Set the pass_id back to nil
  end

  # Task 1: Check if the attendee has a ride pass
  def has_pass?
    !@pass_id.nil? # Return true if pass_id is not nil, otherwise false
  end

  # Task 2: Check if the attendee fits a ride
  def fits_ride?(min_height)
    @height >= min_height # Return true if height is greater than or equal to min_height
  end

  # Task 3: Check if the attendee is allowed to ride
  def allowed_to_ride?(min_height)
    has_pass? && fits_ride?(min_height) # Return true if both conditions are met
  end
end

# Example usage:
attendee = Attendee.new(100) # Create a new attendee with a height of 100 cm
puts "Has pass: #{attendee.has_pass?}" # => Has pass: false

attendee.issue_pass!(42) # Issue a pass
puts "Has pass: #{attendee.has_pass?}" # => Has pass: true

puts "Fits ride (minimum height 120): #{attendee.fits_ride?(120)}" # => Fits ride (minimum height 120): false
puts "Allowed to ride (minimum height 120): #{attendee.allowed_to_ride?(120)}" # => Allowed to ride (minimum height 120): false

attendee = Attendee.new(140) # New attendee with a height of 140 cm
attendee.issue_pass!(42) # Issue a pass
puts "Fits ride (minimum height 120): #{attendee.fits_ride?(120)}" # => Fits ride (minimum height 120): true
puts "Allowed to ride (minimum height 120): #{attendee.allowed_to_ride?(120)}" # => Allowed to ride (minimum height 120): true