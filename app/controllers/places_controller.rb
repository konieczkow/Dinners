class PlacesController < ApplicationController
  respond_to :html, :json

  def index
    @places = Place.all

    respond_with @places
  end

  def new
    @place = current_event.places.build
  end

  def create
    @place = current_event.places.build(params[:place])
  end

  def destroy
  end

  def update
  end

  def edit
  end

end