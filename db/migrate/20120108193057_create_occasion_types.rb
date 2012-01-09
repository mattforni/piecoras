class CreateOccasionTypes < ActiveRecord::Migration
  def self.up
    create_table :occasion_types do |t|
      t.string :name, :null => false
      t.text :description, :default => nil
      t.string :display_name, :default => nil
      t.integer :priority_override, :default => nil
    end
    add_index :occasion_types, :name, :unique => true
    
    OccasionType.new({:name => "catering"}).save
    OccasionType.new({:name => "banquets"}).save
    OccasionType.new({:name => "rehersal_dinners"}).save
  end

  def self.down
    drop_table :occasion_types
  end
end
