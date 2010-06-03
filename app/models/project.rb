class Project < ActiveRecord::Base
	has_many :commits

	def github_url
		"http://github.com/#{git_user}/#{git_repo}"
	end
	
	def github_wiki
		"http://wiki.github.com/#{git_user}/#{git_repo}/"
	end
	
	def github_issues
		"http://github.com/#{git_user}/#{git_repo}/issues"
	end
	
	def has_commits?
		true if commits.count != 0
	end
	
	def self.update_commits
		all.each do |project|
			system("wget http://github.com/api/v2/yaml/commits/list/#{project.git_user}/#{project.git_repo}/master -O /tmp/git_commits_#{project.git_repo}.tmp")
			yaml=YAML::load_file("/tmp/git_commits_#{project.git_repo}.tmp")["commits"].each do |commit|
				unless Commit.find_by_sha1 commit["id"]
					newcommit=project.commits.new
					newcommit.sha1 = commit["id"]			
					newcommit.author_name = commit["author"]["name"]
					newcommit.author_email = commit["author"]["email"]
					newcommit.message = commit["message"]
					newcommit.url = commit["url"]
					newcommit.commited_at = commit["committed_date"]
					newcommit.save
				end
			end
		end
	end	
end
