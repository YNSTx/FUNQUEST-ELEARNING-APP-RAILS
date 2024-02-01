class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :length
      t.text :image_description, array: true, default: []

      t.timestamps
    end
  end
end
