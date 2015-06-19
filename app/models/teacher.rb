class Teacher < ActiveRecord::Base
	def self.search(search)
	  if search.present?
	  	where('fname LIKE ?', "%#{search}%")
	  else
	    @teachers = Teacher.all
	  end
	end
end
