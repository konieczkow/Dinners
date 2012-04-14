class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_event
    Event.last
  end

  def current_user
    User.last
  end

end
