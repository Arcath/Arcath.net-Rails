class CreateCommits < ActiveRecord::Migration
  def self.up
    create_table :commits do |t|
      t.integer :project_id
      t.string :sha1
      t.string :author_name
      t.string :author_email
      t.string :message
      t.string :url
      t.datetime :commited_at

      t.timestamps
    end
  end

  def self.down
    drop_table :commits
  end
end
