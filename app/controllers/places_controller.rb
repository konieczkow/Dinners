class PlacesController < ApplicationController
  respond_to :html, :json

  def index
    @places = Place.all

    respond_with @places
  end

  def new
  end

  def create
  end

  def destroy
  end

  def update
  end

  def edit
  end

end