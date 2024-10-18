class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  # Check if the attendee has a pass
  def has_pass?
    !@pass_id.nil?
  end

  # Check if the attendee's height meets the minimum height requirement for a ride
  def fits_ride?(ride_minimum_height)
    @height >= ride_minimum_height
  end

  # Check if the attendee is allowed to ride based on their height and pass status
  def allowed_to_ride?(ride_minimum_height)
    fits_ride?(ride_minimum_height) && has_pass?
  end
end
