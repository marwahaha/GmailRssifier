xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title @feed_name

    for mail in @mails
      xml.item do
        xml.title mail.subject
        xml.description mail.body  
        xml.pubDate mail.date.rfc822()
        #xml.link ""#post_url(post)
        #xml.guid ""#post_url(post)
      end
    end
  end
end