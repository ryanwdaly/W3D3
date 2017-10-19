class TagTopic < ApplicationRecord

  has_many :taggings,
    primary_key: :id,
    foreign_key: :tag_topic_id,
    class_name: :Tagging

  has_many :urls,
    through: :taggings,
    source: :url

  def popular_links
    all_url_objects = self.urls
    hash_of_clicks = Hash.new
    all_url_objects.each { |url| hash_of_clicks[url.long_url] = url.num_clicks }
    hash_of_clicks.sort_by { |_, v| v }.reverse[0..4]
  end

end
