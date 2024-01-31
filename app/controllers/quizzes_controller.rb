class QuizzesController < ApplicationController
  before_action :authenticate_user!

  def show
    # show questions for a quiz
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions
    @answer = Answer.new
  end

  def edit
    # edit a quiz
    @quiz = Quiz.find(params[:id])
  end

  def update
    # update a quiz
    @quiz = Quiz.find(params[:id])
    @quiz.update(quiz_params)
    redirect_to quiz_path(@quiz)
  end

  private

  def quiz_params
    #quizz parrmas should take question and answer params
    params.require(:quiz).permit(:question, :answer)
  end

end
