class Event < ActiveRecord::Base

  belongs_to :user, inverse_of: :events, counter_cache: true
  has_many :places, inverse_of: :event, dependent: :destroy

end
