class Course < ApplicationRecord
  has_many :quizzes
  has_many :questions, through: :quizzes
  has_many_attached :course_images

end
