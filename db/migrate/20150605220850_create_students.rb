class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :First_Name
    	t.string :Last_Name
    	t.string :Sex
    	t.string :Entrance_Age
    	t.string :Entrance_Year
    	t.string :s_class
      t.timestamps null: false
    end
  end
end
