xml.instruct! :xml, version: "1.0" 
xml.rss version: "2.0" do
  xml.channel do
    xml.title "Blog"
    xml.description "From Pykih software LLP"
    xml.link posts_path

    @articles.each do |article|
      xml.item do
        xml.title article.title
        xml.description article.post
        xml.pubDate article.updated_at
        xml.link user_article_url(article.user, article)
        xml.guid user_article_url(article.user, article)
      end
    end
  end
end