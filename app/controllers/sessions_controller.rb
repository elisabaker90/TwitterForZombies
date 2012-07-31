class SessionsController < ApplicationController

	def new
		session[:zombie] = nil
		redirect_to sessions_path
	end

	def create
		@current_zombie = Zombie.find_by_name(params[:session][:name])
  		if !@current_zombie.nil?
  			session[:zombie] = @current_zombie
      		redirect_to @current_zombie
  		else
			flash.now[:error] = 'Zombie not found!'
			render 'login_fail'
		end	
	end

	def destroy
		
	end

end