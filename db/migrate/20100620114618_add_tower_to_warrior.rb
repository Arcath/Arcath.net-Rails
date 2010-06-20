class AddTowerToWarrior < ActiveRecord::Migration
  def self.up
    add_column :warriors, :tower, :string
  end

  def self.down
    remove_column :warriors, :tower
  end
end
