module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
  	# Prendra la valeur current_user. Si celle-ci vaut nil, alors il ira rechercher le current user 
    @current_user ||= User.find_by(id: session[:user_id])
  end
	
end
