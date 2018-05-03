class ApplicationController < ActionController::Base
	# Permet de faire appel à toutes les fonctions définies dans le session helper
	include SessionsHelper
end
