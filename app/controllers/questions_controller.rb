class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params["question"];
    @answer = generate_response(params["question"])
  end

  private

  def generate_response(question)
    if question == "I am going to work"
      "Great!"
    elsif question.include? "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work"
    end
  end
end
