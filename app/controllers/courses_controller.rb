class CoursesController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @quiz = Quiz.new
  end

  def destroy
    @course = course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end
end
