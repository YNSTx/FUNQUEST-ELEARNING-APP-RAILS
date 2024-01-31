class QuestionsController < ApplicationController
  before_action :set_course
  before_action :set_quiz
  before_action :set_question, only: [:show]

  def show
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_quiz
    @quiz = @course.quizzes.find(params[:quiz_id])
  end

  def set_question
    @question = @quiz.questions.find(params[:id])
  end
end
