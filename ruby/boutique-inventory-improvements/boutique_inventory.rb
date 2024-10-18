require 'ostruct'

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map { |item| OpenStruct.new(item) }
  end

  # 1. Return a list of the names of the items
  def item_names
    @items.map(&:name).sort
  end

  # 2. Return any items that are cheap
  def cheap
    @items.select { |item| item.price < 30 }
  end

  # 3. Return any items that are out of stock
  def out_of_stock
    @items.select { |item| item.quantity_by_size.empty? }
  end

  # 4. Return a single item's stock
  def stock_for_item(name)
    item = @items.find { |item| item.name == name }
    item ? item.quantity_by_size : nil
  end

  # 5. Return the total stock
  def total_stock
    @items.sum { |item| item.quantity_by_size.values.sum }
  end
end

# Example usage:
inventory = BoutiqueInventory.new([
  { price: 65.00, name: "Maxi Brown Dress", quantity_by_size: { s: 3, m: 7, l: 8, xl: 4 } },
  { price: 50.00, name: "Red Short Skirt", quantity_by_size: {} },
  { price: 29.99, name: "Black Short Skirt", quantity_by_size: { s: 1, xl: 4 } },
  { price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: { s: 7, m: 2 } }
])

puts inventory.items.first.name
# => "Maxi Brown Dress"

puts inventory.items.first.price
# => 65

puts inventory.items.size
# => 4

puts inventory.item_names
# => ["Bamboo Socks Cats", "Black Short Skirt", "Maxi Brown Dress", "Red Short Skirt"]

puts inventory.total_stock
# => 36