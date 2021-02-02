class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @ask = params[:answer]
    @answer = ''
   case
  when @ask == "I am going to work right now!"
    @answer = 'Great!'
    return @answer
  when @ask.include?('?')
    @answer = "Silly question, get dressed and go to work!"
    return @answer
  else
    @answer = "I don't care, get dressed and go to work!"
    return @answer
  end
  end

end
