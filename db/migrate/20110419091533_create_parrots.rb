class CreateParrots < ActiveRecord::Migration
  def self.up
    create_table :parrots do |t|
      t.string :name
      t.references :pirate
      
      t.timestamps
    end
  end

  def self.down
    drop_table :parrots
  end
end
