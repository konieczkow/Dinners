class Place < ActiveRecord::Base

  belongs_to :event, inverse_of: :places, counter_cache: true
  has_many :votes

  validates :event_id,
            presence: true

end
