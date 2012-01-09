module Menu
  MENU_FOLDER = File.join(RAILS_ROOT, "config", "menu")
  
  def self.types
    Dir.glob(File.join(MENU_FOLDER, "*.yml")).reduce([]) do |types, f|
      types << File.basename(f, ".yml")
    end
  end
  
  def self.load_menu_object(type)
    return nil if !valid_type?(type)
    YAML::load(File.open(get_menu_path(type)))
  end
  
  def self.valid_type?(type)
    types.include?(type)
  end  
  
  private
  
  def self.get_menu_path(type)
    File.join(MENU_FOLDER, "#{type}.yml")
  end
end
