class AddGitHubToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :git_user, :string
    add_column :projects, :git_repo, :string
  end

  def self.down
    remove_column :projects, :git_repo
    remove_column :projects, :git_user
  end
end
