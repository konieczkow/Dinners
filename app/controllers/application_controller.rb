class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_event
    @current_event ||= Event.find_by_unique_hash(params[:event_id])
  end

  def current_user
    User.last
  end

end
