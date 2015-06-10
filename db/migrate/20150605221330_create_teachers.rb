class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
    		t.string :First_Name
    		t.string :Last_Name

      t.timestamps null: false
    end
  end
end
