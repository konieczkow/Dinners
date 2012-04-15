class EventDecorator < ApplicationDecorator
  decorates :event

  def event_url
    h.new_event_place_url(event.unique_hash)
  end
end