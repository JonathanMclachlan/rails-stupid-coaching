class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].present?
      @question = params[:question]
      if @question == "I am going to work"
        @answer = "Great!"
      elsif @question.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    else
      @params = ""
    end
  end
end
