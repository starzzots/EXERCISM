=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
class Matrix
    attr_reader :rows, :columns
  
    # This method runs when we create a new Matrix object
    def initialize(matrix_string)
      # Split the string into rows using the newline character
      @rows = matrix_string.split("\n").map do |row|
        # For each row, split by spaces and convert to integers
        row.split.map(&:to_i)
      end
      # Create columns from rows
      @columns = create_columns
    end
  
    # This method creates columns from the rows
    def create_columns
      # Transpose the rows to get columns
      @rows.transpose
    end
  end
  
  # Example usage:
  matrix_string = "9 8 7\n5 3 2\n6 6 7" # This is our input string representing the matrix
  matrix = Matrix.new(matrix_string)  # Create a new Matrix object
  
  # Print the rows
  puts "Rows:"
  matrix.rows.each do |row|            # Go through each row
    puts row.join(', ')                 # Join the numbers in the row with a comma and print
  end
  
  # Print the columns
  puts "\nColumns:"
  matrix.columns.each do |col|         # Go through each column
    puts col.join(', ')                 # Join the numbers in the column with a comma and print
  end