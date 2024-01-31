class Question < ApplicationRecord
  belongs_to :quiz
  has_one :course, through: :quiz
  attr_accessor :user_choice
end
