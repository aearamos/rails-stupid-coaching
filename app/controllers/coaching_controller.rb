class CoachingController < ApplicationController

  def answer
    @question = params[:query]
    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end

  def coach_answer_enhanced(your_message)
    answer = ''
    if your_message != "I am going to work right now!"
      if your_message != "I AM GOING TO WORK RIGHT NOW!"
        if your_message.include?('?') & (your_message == your_message.upcase)
          answer = "I can feel your motivation! Silly question, get dressed and go to work!"
        elsif your_message.include?('?')
          answer =  "Silly question, get dressed and go to work!"
        elsif your_message == your_message.upcase
          answer =  "I can feel your motivation! I don't care, get dressed and go to work!"
        else
          answer =  "I don't care, get dressed and go to work!"
        end
      end
    end
    answer
  end
end
