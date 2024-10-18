=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter
  attr_accessor :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints

  def initialize
    @strength = roll_ability
    @dexterity = roll_ability
    @constitution = roll_ability
    @intelligence = roll_ability
    @wisdom = roll_ability
    @charisma = roll_ability
    @hitpoints = calculate_hitpoints
  end

  # Method to roll ability scores
  def roll_ability
    rolls = Array.new(4) { rand(1..6) }
    rolls.sort.last(3).sum
  end

  # Calculate the constitution modifier
  def self.modifier(constitution)
    (constitution - 10) / 2
  end

  # Calculate hitpoints based on constitution modifier
  def calculate_hitpoints
    modifier = self.class.modifier(@constitution)
    10 + modifier
  end

  def display_character
    puts "Character Abilities:"
    puts "Strength: #{@strength}"
    puts "Dexterity: #{@dexterity}"
    puts "Constitution: #{@constitution}"
    puts "Intelligence: #{@intelligence}"
    puts "Wisdom: #{@wisdom}"
    puts "Charisma: #{@charisma}"
    puts "Hitpoints: #{@hitpoints}"
  end
end

# Create a new character and display its abilities
kyle = DndCharacter.new
kyle.display_character