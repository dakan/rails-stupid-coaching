class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
        @answer = "I can't hear you!"
    elsif @question =~ /i am going to work/i
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer= "Silly Question, get dressed and go to work!"
    else
      @answer = "I don't care, go to work!"
    end
  end
end
