class UsersController < ApplicationController
  def new
  	@this_user = User.new
  end

  def create
  	# On fait tout en une fois : create, qui retourne l'user, puis on utilse son id directement
  	redirect_to user_path(User.create(params.require('user').permit(:name)).id)
  end

  def show
  	# On utilise find by avec la valeur de la clé id du paramètre
  	@this_user = User.find_by(params.permit(:id))
    @list_past_events_created = Array.new
    @list_future_events_created = Array.new
    @this_user.created_events.each do |event|
      if (event.date - Time.now > 0)
        # la date de l'évènement est future
        @list_future_events_created.push(event)
      else
        @list_past_events_created.push(event)
      end
    end

    @list_past_attended_events = Array.new
    @list_future_attended_events = Array.new
    @this_user.attended_events.each do |event|
      if (event.date - Time.now > 0)
        # la date de l'évènement est future
        @list_future_attended_events.push(event)
      else
        @list_past_attended_events.push(event)
      end
    end

  end
end
