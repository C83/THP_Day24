class SessionsController < ApplicationController
  def new

  end

  def create
  	user = User.find_by(params.require(:session).permit(:name))
    if user
      flash[:notice] = "Tu es connecté"
      log_in user
      redirect_to user, notice: "Tu es connecté"
	else
      flash[:alert] = "Invalid email/password combination"
      render 'new'
    end
  end
end