class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = 'Great!'
    return @answer if ['I AM GOING TO WORK RIGHT NOW!', 'I am going to work right now!'].include?(params[:question])

    if params[:question].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
    @answer = params[:question] == params[:question].upcase ? 'I can feel your motivation! ' + @answer : @answer
    @answer
  end
end
