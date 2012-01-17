class MenuItem
  attr_accessor :name, :price, :description, :extra_info
  def initialize(menu_item_hash)
    self.name = menu_item_hash["name"]
    self.price = menu_item_hash["price"]
    self.description = menu_item_hash["desc"]
    self.extra_info = menu_item_hash["extra"]
  end
end
