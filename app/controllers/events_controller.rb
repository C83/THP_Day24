class EventsController < ApplicationController
	def new
		@this_event = Event.new
		# Permet de palier rapidement le décallage horaire et gestion du +2GMT 
		@this_event.date = Time.now + 2.days + 2.hours
	end

	def create
		this_event = Event.new
		this_event.description = params.require(:event).permit(:description)
		this_event.place = params.require(:event).permit(:place)
		this_event.date = params.require(:event).permit(:date)
		this_event.creator = current_user
		this_event.save
		redirect_to event_path(this_event.id)
	end
end
