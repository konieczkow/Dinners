class Place < ActiveRecord::Base

  belongs_to :event, inverse_of: :places, counter_cache: true
  has_many :votes, inverse_of: :place, dependent: :destroy
  belongs_to :user, inverse_of: :places, dependent: :destroy

  validates :event_id,
            presence: true

end
