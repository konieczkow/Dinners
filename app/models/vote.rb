class Vote < ActiveRecord::Base

  belongs_to :place, inverse_of: :votes, counter_cache: true
  belongs_to :user, inverse_of: :votes, counter_cache: true

  validates :place_id, :user_id,
            presence: true

  validates :place_id,
            uniqueness: {scope: :user_id}

end
