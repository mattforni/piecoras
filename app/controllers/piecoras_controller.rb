require "yaml_handler"
include YamlHandler
class PiecorasController < ApplicationController
  layout 'piecoras'
  EXPOSED_ACTIONS = ["menu", "events", "occasions", "about", "gallery"]
  
  def home
  end

  def menu
    require "menu"
    @menu_types = Menu.types.reduce([]) {|types, name|
      types << MenuType.new(name)}.sort_by(&:priority)
  end

  def events
    @types = Event.types
  end

  def occasions
    @types = Occasion.types
  end

  def about
    about = YamlHandler::load_file(File.join(YAML_ROOT, "about.yml"))
    @hours = about["hours"]
    @location = about["location"]
    @contact = about["contact"]
  end

  def gallery
  end

end
