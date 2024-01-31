class AddUserChoiceToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :questions, :user_choice, :string
  end
end
