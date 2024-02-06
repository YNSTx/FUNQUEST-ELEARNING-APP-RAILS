class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :quizzes
  has_many :courses
  has_many :answers
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many_attached :certificates
end
