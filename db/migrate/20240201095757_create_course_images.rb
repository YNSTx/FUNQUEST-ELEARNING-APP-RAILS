class CreateCourseImages < ActiveRecord::Migration[7.1]
  def change
    create_table :course_images do |t|

      t.timestamps
    end
  end
end
