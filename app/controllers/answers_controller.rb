class AnswersController < ApplicationController
  def answer
    @query = params[:question]
    @response = coach_answer(@query)
  end

  private 

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.include?("?")
    return "Silly question, get dressed and go to work!"
  elsif your_message.upcase == "I AM GOING TO WORK"
    return "Great!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

# def coach_answer_enhanced(your_message)
#   # TODO: return coach answer to your_message, with additional custom rules of yours!
#   reply = ""
#   if your_message.upcase == "I AM GOING TO WORK RIGHT NOW!"
#     return ""
#   elsif your_message == your_message.upcase
#     reply += "I can feel your motivation! "
#   end

#   return reply + coach_answer(your_message)
# end

end
