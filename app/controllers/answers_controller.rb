class AnswersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    # update a quiz
    params[:answer][:user_choice].each_with_index do |answer, index|
      Answer.create!(user_choice: answer, question_id: params[:answer][:question_id][index], user_id: current_user.id)
    end
    redirect_to answer_path(params[:answer][:question_id])
  end

  def show
    # i need method to score the quiz
    # user_choice should be comperated to the correct answer
    answers = current_user.answers
    score = 0.0
    answers.last(3).each do |answer|
    # p answer.user_choice
    # p answer.question.correct_answer
      if answer.user_choice == answer.question.correct_answer
        score += 1
      end
    end
    score = score / 3             # 3 total questions
    @score = score * 100
  end
end
