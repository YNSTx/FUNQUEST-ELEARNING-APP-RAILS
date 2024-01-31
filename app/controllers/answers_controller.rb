class AnswersController < ApplicationController
  skip_before_action :verify_authenticity_token


  def create
    # update a quiz
    params[:answer][:user_choice].each do |answer|
      Answer.create!(user_choice: answer, question_id: params[:answer][:question_id], user_id: current_user.id)
    end
    redirect_to course_quiz_path(@course, @quiz)
  end



end
