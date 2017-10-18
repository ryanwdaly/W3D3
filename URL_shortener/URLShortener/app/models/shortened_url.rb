class ShortenedUrl < ApplicationRecord
  validates :user_id, presence: true
  validates :short_url, :long_url, presence: true


  belongs_to :submitter,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  has_many :visits,
    primary_key: :id,
    foreign_key: :shortened_url_id,
    class_name: :Visit

  has_many :visitors,
    ->{ distinct },
    through: :visits,
    source: :visitor

  def self.random_code(user, long_url)
    short_url = SecureRandom.urlsafe_base64
    ShortenedUrl.new(
      user_id: user.id,
      short_url: short_url,
      long_url: long_url
    )
  end

  def num_clicks
    self.visits.length
  end

  def num_uniques
    self.visitors.select(:user_id).count
  end

  def num_recent_uniques
    self.visitors
      .where("visits.created_at > '#{10.minutes.ago}'")
        .select(:user_id).count

  end


end
