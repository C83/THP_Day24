class EventsController < ApplicationController
	def new
		@this_event = Event.new
		# Permet de palier rapidement le décallage horaire et gestion du +2GMT 
		@this_event.date = Time.now + 2.days + 2.hours
	end

	def create
		if current_user
			this_event = Event.new(params.require(:event).permit(:description, :place, :date))
			this_event.creator = current_user
			this_event.save
		
			redirect_to event_path(this_event.id)
		else
			flash[:alert] = "You should be connected to create a event."
			redirect_to new_event_path
		end
	end

	def index
		@list_events = Event.all
	end

	def show
		@this_event = Event.find_by(params.permit(:id))
	end
end
