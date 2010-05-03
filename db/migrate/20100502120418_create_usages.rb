class CreateUsages < ActiveRecord::Migration
  def self.up
    create_table :usages do |t|
      t.float :ammount
      t.timestamps
    end
  end
  
  def self.down
    drop_table :usages
  end
end
