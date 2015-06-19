class StudentsController < ApplicationController
	
	def new
		@students = Student.new
	end

	def create 
		@students = Student.new(student_params)
		if @students.save
			session[:user_id] = @user_id
			redirect_to students_path, notice: 'Successfully added'
		else
			render 'new'
		end
	end

	def show
		@students = Student.find(params[:id])
	end

	def index
		session[:user_id] = @user_id

				@students = Student.search(params[:search])
		end


	def edit 
		session[:user_id] = @user_id
		@students = Student.find(params[:id])
	end

	def destroy
		Student.find(params[:id]).destroy
	end

	def update
		@students = Student.find(params[:id])
		if @students.update_attributes(student_params)
			session[:user_id] = @user_id
			redirect_to students_path, notice: 'Successfully updated'
		else
			render 'edit'
		end
	end

	private
		def student_params
			params.require(:student).permit(:fname, :Last_Name, :Sex, :Entrance_Age, :Entrance_Year, :s_class)
		end
	end
