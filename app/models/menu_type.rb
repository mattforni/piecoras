require "menu"
class MenuType
  attr_accessor :name, :priority, :description, :extra_info, :items
  def initialize(name)
    self.name = name
    yaml_obj = Menu::load_menu_object(name)
    self.priority = yaml_obj["priority"]
    self.description = yaml_obj["display"]["desc"].gsub('<', '').strip rescue nil
    self.extra_info = yaml_obj["display"]["extra"] rescue nil
    self.items = create_item_list(yaml_obj["items"] || [])
  end
  
  private
  
  def create_item_list(items)
    items.reduce([]) do |item_list, item|
      item_list << MenuItem.new(item)
    end
  end
end
