class Tagging < ApplicationRecord

  belongs_to :topic,
    primary_key: :id,
    foreign_key: :tag_topic_id,
    class_name: :TagTopic

  belongs_to :url,
    primary_key: :id,
    foreign_key: :short_url_id,
    class_name: :ShortenedUrl


end
