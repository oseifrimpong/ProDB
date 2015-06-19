class Student < ActiveRecord::Base

	has_many :choosens

	#svalidates_uniqueness_of :Last_Name, :First_Name
	def self.search(search)
	  if search.present?
	  	where('fname LIKE ?', "%#{search}%")
	  else
	    @students = Student.all
	  end
	end
end
