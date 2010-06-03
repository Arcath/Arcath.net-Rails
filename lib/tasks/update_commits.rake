desc "Updates Commits"
task :update_commits => :environment do
	Project.update_commits
end
