require "yaml_handler" 
include YamlHandler
class Occasion
  YAML_FILE = File.join(YAML_ROOT, "occasions.yml")
  def self.types
    YamlHandler::load_file(YAML_FILE)["types"]
  end
end
