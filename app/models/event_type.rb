class EventType < ActiveRecord::Base
  def display
    return display_name if display_name
    name.split("_").reduce("") {|str, n| str << "#{n.capitalize} "}.strip
  end
end
