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
  end
end
