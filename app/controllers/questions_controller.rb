# frozen_string_literal: true

# hello
class QuestionsController < ApplicationController
  helper_method :answer

  def ask; end

  def coach_answer
    if (params[:user_question] == 'I am going to work') || (params[:user_question] == 'I AM GOING TO WORK')
      'Great!'
    elsif params[:user_question].include?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def answer
    @answer = coach_answer
  end
end
