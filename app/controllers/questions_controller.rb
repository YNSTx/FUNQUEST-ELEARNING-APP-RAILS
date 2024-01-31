class QuestionsController < ApplicationController
  def show
    @questions = @quiz.questions
  end
end
