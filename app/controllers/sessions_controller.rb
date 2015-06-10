class SessionsController < ApplicationController

	def new 
	end

	def create
		user = User.find_by_username(params[:username])
		if user && user.authenticate(params[:password_digest])
			session[:user_id] = user.id

			redirect_to main_index_path, notice: 'Logged in!'
		else
			flash.now.alert = 'Username or Password is invalid'
			render "new"
		end
	end

	def destroy 
		session[:user_id] = nil
		redirect_to root_url, notice: "Logged out!"
	end
end
