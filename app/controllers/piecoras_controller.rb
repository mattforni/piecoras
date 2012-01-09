require "menu"

class PiecorasController < ApplicationController
  layout 'piecoras'
  EXPOSED_ACTIONS = ["menu", "delivery", "events", "occasions", "about", "gallery"]
  
  def home
  end

  def menu
    @types = Menu::types
    @content = {}
    for type in @types
      @content[type] = Menu::load_menu_object(type)
    end
  end

  def delivery
  end

  def events
    @types = EventType.all
  end

  def occasions
    @types = OccasionType.all
  end

  def about
  end

  def gallery
  end

end
