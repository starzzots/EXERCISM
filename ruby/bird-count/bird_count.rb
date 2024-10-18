class BirdCount
  # Class method to return last week's counts
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  # Method to return how many birds visited yesterday
  def yesterday
    @birds_per_day[-2] # The second last element
  end

  # Method to calculate the total number of visiting birds
  def total
    @birds_per_day.sum
  end

  # Method to calculate the number of busy days
  def busy_days
    @birds_per_day.count { |count| count >= 5 }
  end

  # Method to check if there was a day with no visiting birds
  def day_without_birds?
    @birds_per_day.include?(0)
  end
end

# Example usage:
birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)

puts BirdCount.last_week # => [0, 2, 5, 3, 7, 8, 4]
puts bird_count.yesterday # => 4
puts bird_count.total # => 19
puts bird_count.busy_days # => 2
puts bird_count.day_without_birds? # => true
