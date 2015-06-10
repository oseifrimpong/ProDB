class CoursesController < ApplicationController
	def new
		@courses = Course.new
	end

	def index
		@courses = Course.all
	end

	def create
		@courses = Course.new(course_params)
		if @courses.save
			redirect_to courses_path notice: 'Saved Sucessfully'
		else
			render 'new'
		end
	end

	def show
		@courses = Course.find(params[:id])
	end

	def edit
		@courses = Course.find(params[:id])
	end

	def update
		@courses = Course.find(params[:id])
		if @courses.update_attributes(course_params)
			session[:user_id] = @user_id
			redirect_to courses_path, notice: 'Successfully updated'
		else
			render 'edit'
		end
	end
	
	def destroy
		Course.find(params[:id]).destroy
	end

	private
		def course_params
			params.require(:course).permit(:Course, :Credit, :Grade, :Cancelled_Year)
		end
end

