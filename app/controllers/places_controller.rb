class PlacesController < ApplicationController
  respond_to :html, :json

  def index
    @places = current_event.places

    respond_with @places
  end

  def new
    @places = current_event.places.includes(:user)
    @place = current_event.places.build
  end

  def create
    @place = current_event.places.build(params[:place]) { |place| place.user = current_user }
    @place.save
    redirect_to new_event_place_path(params[:event_id])
  end

  def destroy
  end

end