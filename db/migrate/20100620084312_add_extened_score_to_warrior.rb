class AddExtenedScoreToWarrior < ActiveRecord::Migration
  def self.up
    add_column :warriors, :extended_score, :text
  end

  def self.down
    remove_column :warriors, :extended_score
  end
end
