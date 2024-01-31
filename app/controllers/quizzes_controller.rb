class QuizzesController < ApplicationController
  before_action :set_course
  before_action :set_quiz, only: [:show, :update, :destroy, :submit_quiz]

  def new
    @quiz = @course.build_quiz
    3.times { @quiz.questions.build }
  end

  def create
    @quiz = @course.build_quiz(quiz_params)
    if @quiz.save
      redirect_to course_quiz_path(@course, @quiz), notice: 'Quiz was successfully created.'
    else
      render :new
    end
  end

  def show
    @questions = @quiz.questions
  end

  def submit_quiz
    set_course
    set_quiz

    if @quiz.update(quiz_params)
      @score = calculate_score(@quiz)
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@quiz) }
        format.html { render :show, notice: 'Quiz was successfully submitted.' }
      end
    else
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@quiz, partial: "quizzes/form", locals: { quiz: @quiz }) }
        format.html { render :show }
      end
    end
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_quiz
    @quiz = @course.quizzes.find(params[:id])
  end

  def quiz_params
    params.require(:questions).permit(

        :id,
        :question_text,
        :choice_one,
        :choice_two,
        :choice_three,
        :choice_four,
        :user_choice,
        :correct_answer
    )
  end

  def calculate_score(quiz)
    quiz.questions.where(correct_answer: true, user_choice: correct_choices(quiz)).count
  end

  def correct_choices(quiz)
    quiz.questions.where(correct_answer: true).pluck(:user_choice)
  end
end
