require 'digest/sha1'

class Event < ActiveRecord::Base

  belongs_to :user, inverse_of: :events, counter_cache: true
  has_many :places, inverse_of: :event, dependent: :destroy

  validates :user_id,
            presence: true

  before_save :generate_hash

  def generate_hash
    self.unique_hash = Digest::SHA1.hexdigest(Time.now.to_s + rand(10000).to_s)
  end

end
