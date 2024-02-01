class CoursesController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @quiz = Quiz.new
    @course_images = Cloudinary::Api.resources(type: 'upload', prefix: "#{@course.id}-#{CGI.escape(@course.title)}")
  end

end
