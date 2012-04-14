class User < ActiveRecord::Base

  has_many :events, inverse_of: :user, dependent: :destroy
  has_many :votes, inverse_of: :user, dependent: :destroy

  validates :twitter_id,
            presence: true,
            uniqueness: true

  def self.find_or_initialize_with_auth(auth_hash) 
    User.find_or_initialize_by_twitter_id(auth_hash[:twitter_id]) { |user| user.screen_name = auth_hash[:screen_name] }
  end

end
