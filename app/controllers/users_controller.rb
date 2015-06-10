class UsersController < ApplicationController
	before_filter :authorize, only: [:edit, :update]


	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			session[:user_id] = @user.id 
			redirect_to main_index_path, notice: 'Thank you for signing up!'
		else
			render 'new'
		end
	end

	private
		def user_params
			params.require(:user).permit(:username, :password, :password_confirmation, :user_type)
		end
end
