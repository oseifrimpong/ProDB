class Student < ActiveRecord::Base

	#svalidates_uniqueness_of :Last_Name, :First_Name
	def self.search(search)
	  if search
	    find(:all, :conditions => ['First_Name LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end
end
