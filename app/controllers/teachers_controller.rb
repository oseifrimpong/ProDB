class TeachersController < ApplicationController
	def new
		@teachers = Teacher.new
	end

	def create
		@teachers = Teacher.new(teach_params)
		if @teachers.save
			redirect_to teachers_path notice: 'Saved Sucessfully'
		else
			render 'new'
		end
	end

	def show
		@teachers = Teacher.find(params[:id])
	end

	def edit
		@teachers = Teacher.find(params[:id])
		
	end

	def index
		@teachers = Teacher.search(params[:search])
	end

	def destroy
		Teacher.find(params[:id]).destroy
	end

	def update
		@teachers = Teacher.find(params[:id])
		if @teachers.update_attributes(teach_params)
			session[:user_id] = @user_id
			redirect_to teachers_path, notice: 'Successfully updated'
		else
			render 'edit'
		end
	end

private 
	def teach_params
		params.require(:teacher).permit(:fname, :Last_Name )
	end
end
