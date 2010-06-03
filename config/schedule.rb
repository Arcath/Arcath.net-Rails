every 1.day, :at => "11:55pm" do
	rake "update_usage"
end

every 1.hour do
	rake "update_commits"
end
