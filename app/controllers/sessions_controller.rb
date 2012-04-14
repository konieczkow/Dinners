class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_or_initialize_with_auth(auth_hash)
    @user.save
    redirect_to '/'
  end

  def anonymous_create
    render json: {success: true}
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
