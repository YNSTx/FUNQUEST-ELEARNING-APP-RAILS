class Question < ApplicationRecord
  belongs_to :quiz
  has_one :course, through: :quiz
  has_one :answer
  attr_accessor :user_choice
end
