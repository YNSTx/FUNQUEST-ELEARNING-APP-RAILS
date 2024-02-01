# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Course.destroy_all
User.destroy_all
  
# User.create!(first_name: "Younes", last_name: "ST", email: "younes@lewagon.com", password: "rails123")

# Course.create!(title: "Effective Communication Mastery", description: " This course focuses on enhancing verbal and non-verbal communication skills in professional settings. Participants will learn to express ideas clearly, listen actively, and adapt communication styles to different audiences.", lenght: 10)

user1 = User.create!(
  first_name: "John",
  last_name: "Doe",
  email: "john@example.com",
  password: "password"
)

user2 = User.create!(
  first_name: "Jane",
  last_name: "Doe",
  email: "jane@example.com",
  password: "password"
)

# Create Courses
course1 = Course.create!(
  title: "Introduction to Ruby",
  description: "Learn the basics of the Ruby programming language.",
  length: 4
)

course2 = Course.create!(
  title: "Web Development with Rails",
  description: "Build web applications using the Ruby on Rails framework.",
  length: 8
)

# Create Quizzes with Questions for Course 1
quiz1 = Quiz.create!(
  enrollment_date: Date.today,
  user: user1,
  course: course1
)

Question.create!(
  quiz: quiz1,
  question_text: "What is the symbol used for commenting in Ruby?",
  choice_one: "#",
  choice_two: "//",
  choice_three: "/**/",
  choice_four: "--",
  correct_answer: "#"
)

Question.create!(
  quiz: quiz1,
  question_text: "Which method is used to print output in Ruby?",
  choice_one: "puts",
  choice_two: "print",
  choice_three: "echo",
  choice_four: "write",
  correct_answer: "puts"
)

Question.create!(
  quiz: quiz1,
  question_text: "What does IRB stand for?",
  choice_one: "Interactive Ruby",
  choice_two: "Integrated Ruby",
  choice_three: "Internal Ruby",
  choice_four: "In-memory Ruby",
  correct_answer: "Interactive Ruby"
)

# Create Quizzes with Questions for Course 2
quiz2 = Quiz.create!(
  enrollment_date: Date.today,
  user: user2,
  course: course2
)

Question.create!(
  quiz: quiz2,
  question_text: "What is the MVC pattern in Rails?",
  choice_one: "Model, View, Controller",
  choice_two: "Markup, View, Controller",
  choice_three: "Model, Validation, Controller",
  choice_four: "Model, View, Component",
  correct_answer: "Model, View, Controller"
)

Question.create!(
  quiz: quiz2,
  question_text: "Which command is used to create a new Rails application?",
  choice_one: "rails start",
  choice_two: "rails generate",
  choice_three: "rails new",
  choice_four: "rails create",
  correct_answer: "rails new"
)

Question.create!(
  quiz: quiz2,
  question_text: "What is the purpose of the Rails controller?",
  choice_one: "Handle database migrations",
  choice_two: "Manage application logic and flow",
  choice_three: "Define database schemas",
  choice_four: "Render HTML views",
  correct_answer: "Manage application logic and flow"
)

puts "Seed data created successfully!"
