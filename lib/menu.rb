require "yaml_handler"
include YamlHandler
module Menu
  MENU_ROOT = File.join(YAML_ROOT, "menu")
  
  def self.types
    Dir.glob(File.join(MENU_ROOT, "*.yml")).reduce([]) do |types, f|
      types << File.basename(f, ".yml")
    end
  end
  
  def self.load_menu_object(type)
    YamlHandler::load_file(get_menu_path(type))
  end
  
  private
  
  def self.get_menu_path(type)
    File.join(MENU_ROOT, "#{type}.yml")
  end
end
