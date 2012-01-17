require "yaml_handler"
include YamlHandler
class Event
  YAML_FILE = File.join(YAML_ROOT, "events.yml")
  def self.types
    YamlHandler::load_file(YAML_FILE)["types"]
  end
end
