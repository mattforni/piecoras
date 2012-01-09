class CreateEventTypes < ActiveRecord::Migration
  def self.up
    create_table :event_types do |t|
      t.string :name, :null => false
      t.text :description, :default => nil
      t.string :display_name, :default => nil
      t.integer :priority_override, :default => nil
    end
    add_index :event_types, :name, :unique => true
    
    EventType.new({:name => "live_music"}).save
    EventType.new({:name => "ufc", :display_name => "UFC"}).save
    EventType.new({:name => "sounders_soccer"}).save
  end

  def self.down
    drop_table :event_types
  end
end
