# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def title(title)
		content_for :title, title
	end
	
	def tag_cloud
		output="<ul id=\"tagcloudul\">"
		totalposts=BlogPost.all.count
		Tag.all.each do |tag|
			tagcount=tag.blog_posts.count
			unless tagcount == 0
				size=(((tagcount.to_f/totalposts.to_f)*100.0)).to_i
				#rotate = "-webkit-transform: rotate(-90deg);-moz-transform: rotate(-90deg);" if size.to_i <= 110
				#strong = "font-weight:bold;" if size.to_i >= 150
				#output+="<div id=\"tag\" style=\"font-size:#{size}%;#{rotate}#{strong}\">" + link_to(tag.name, tag_path(tag.name.gsub(".","&dot;"))) + "</div>"
				output+="<li value=\"#{size}\">" + link_to(tag.name, tag_path(tag.name.gsub(".","&dot;"))) + "</li>"
			end
		end
		output+="</ul>"
	end
end
