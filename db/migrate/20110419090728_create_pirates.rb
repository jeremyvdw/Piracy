class CreatePirates < ActiveRecord::Migration
  def self.up
    create_table :pirates do |t|
      t.string :catchphrase

      t.timestamps
    end
  end

  def self.down
    drop_table :pirates
  end
end
