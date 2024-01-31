class Quiz < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :questions
  has_many :answers, through: :questions
end
