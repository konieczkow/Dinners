class User < ActiveRecord::Base

  has_many :events, inverse_of: :user, dependent: :destroy
  has_many :votes

end
