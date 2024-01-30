class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.text :question_text
      t.references :quiz, null: false, foreign_key: true
      t.string :choice_one
      t.string :choice_two
      t.string :choice_three
      t.string :choice_four
      t.boolean :correct_answer

      t.timestamps
    end
  end
end
