require "open-uri"

class AnswersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]


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
    score = score / 3
    @score = (score * 100).round

    generate_certificate_pdf if @score > 66

    @user = current_user
  end

  private

  def generate_certificate_pdf
    pdf = Prawn::Document.new
    pdf.text "Certificate of Completion", align: :center, size: 30
    pdf.text current_user.first_name, align: :center, size: 20
    path = "./public/certificate#{current_user.id}.pdf"
    # Save the PDF to a file
    pdf.render_file path

    file = URI.open(path)
    current_user.certificates.attach(io: file, filename: "cert", content_type: "pdf")
    current_user.save

  end

  def download_certificate
    send_file("/public/certificate#{current_user.id}.pdf")
  end
end
