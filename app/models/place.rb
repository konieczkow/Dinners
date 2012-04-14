class Place < ActiveRecord::Base

  belongs_to :event
  has_many :votes

end
