class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @user_message = params[:message].to_s.downcase

    if @user_message == 'i am going to work'
      @response = 'Great!'
    elsif @user_message.end_with?('?')
      @response = 'Silly question, get dressed and go to work!'
      
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
