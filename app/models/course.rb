class Course < ApplicationRecord
  has_many :quizzes
  has_many :questions, through: :quizzes
  has_many :course_images
end
