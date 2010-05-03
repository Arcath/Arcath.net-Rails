xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "News"
    xml.description "The news from Arcath.net"
    xml.link root_url
    
    for post in @blog_posts
      xml.item do
        xml.title post.title
        xml.description post.body.tbbc
        xml.pubDate post.created_at.to_s(:rfc822)
        xml.link formatted_blog_post_url(post)
        xml.guid formatted_blog_post_url(post)
      end
    end
  end
end
