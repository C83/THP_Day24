class SessionsController < ApplicationController
  def new

  end

  def create
  	user = User.find_by(params.require(:session).permit(:name))
    if user
      flash.now[:notice] = 'Tu es connecté'
      log_in user
      redirect_to user
	else
      flash.now[:notice] = 'Invalid email/password combination'
      render 'new'
    end
  end
end
