namespace :rubywarrior do
	desc "Fetchs the Gists for the ruby warrior commands"
	task :gists => :environment do
		gists=[]
		Warrior.all.map{ |w| gists.push(w.gist) }
		gists.each do |gist|
			system("mkdir -p tmp/rw-gists/#{gist}")
			system("wget http://gist.github.com/raw/#{gist}/player.rb -O tmp/rw-gists/#{gist}/player.rb")
		end
	end
	
	desc "Runs all gists"
	task :run => :environment do
		Warrior.all.each do |warrior|
			system("rubywarrior -d tmp/rw-gists/#{warrior.gist}/ -s -t 0 > tmp/rw-gists/#{warrior.gist}/run.txt")
			output = `tail -n 18 tmp/rw-gists/#{warrior.gist}/run.txt`
			score = output.scan(/Total Score: .* = (.*)/).join
			warrior.score = score
			warrior.extended_score = output.gsub(/\n\nTo practice a level, use the -l option:\n\n  rubywarrior -l 3\n/,'')
			warrior.save
		end
	end
end
