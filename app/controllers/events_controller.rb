class EventsController < ApplicationController

  def new
    event = current_user.events.create
    @event = EventDecorator.new(event)
  end

end
