class Question < ApplicationRecord
  belongs_to :quiz
  has_one :course, through: :quiz
end
