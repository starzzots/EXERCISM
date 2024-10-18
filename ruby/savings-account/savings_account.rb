class SavingsAccount
  # Task 1: Calculate the interest rate based on the balance
  def self.interest_rate(balance)
    if balance < 0
      3.213 # Negative balance interest
    elsif balance < 1000
      0.5   # Interest for balance less than 1000
    elsif balance < 5000
      1.621 # Interest for balance between 1000 and 5000
    else
      2.475 # Interest for balance of 5000 or more
    end
  end

  # Task 2: Calculate the annual balance update
  def self.annual_balance_update(balance)
    interest = interest_rate(balance) / 100 # Convert percentage to decimal
    balance + (balance * interest) # Calculate new balance
  end

  # Task 3: Calculate years to reach desired balance
  def self.years_before_desired_balance(initial_balance, desired_balance)
    years = 0 # Initialize a counter for the number of years
    current_balance = initial_balance # Start with the initial balance

    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance) # Update the balance
      years += 1 # Increase the year count
    end

    years # Return the total number of years needed
  end
end

# Example usage:
puts SavingsAccount.interest_rate(200.75) # => 0.5
puts SavingsAccount.annual_balance_update(200.75) # => 201.75375
puts SavingsAccount.years_before_desired_balance(200.75, 214.88) # => 14
