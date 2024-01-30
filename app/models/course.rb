class Course < ApplicationRecord
  has_many :quizzes
  has_many :questions, through: :quizzes
  belongs_to :user
end
