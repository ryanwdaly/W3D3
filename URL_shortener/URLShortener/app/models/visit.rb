class Visit < ApplicationRecord

  def self.record_visit!(user, shortened_url)
    Visit.new(user_id: user.id, shortened_url_id: shortened_url.id)
  end
  
  belongs_to :visitor,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :visited,
    primary_key: :id,
    foreign_key: :shortened_url_id,
    class_name: :ShortenedUrl


end
