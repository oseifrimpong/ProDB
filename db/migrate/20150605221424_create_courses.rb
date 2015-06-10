class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    	t.string :Course
    	t.string :Credit
    	t.string :Grade
    	t.string :Cancelled_Year
      t.timestamps null: false
    end
  end
end
