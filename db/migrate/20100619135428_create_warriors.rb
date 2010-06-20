class CreateWarriors < ActiveRecord::Migration
  def self.up
    create_table :warriors do |t|
      t.string :name
      t.integer :gist
      t.integer :user_id
      t.integer :score
      t.timestamps
    end
  end
  
  def self.down
    drop_table :warriors
  end
end
