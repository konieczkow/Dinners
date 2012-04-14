class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_or_initialize_by_twitter_id(auth_hash[:twitter_id]) { |user| user.screen_name = auth_hash[:screen_nam] }
    @user.save
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
