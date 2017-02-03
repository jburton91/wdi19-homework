class EightballController < ApplicationController
  def play
  end

  def answer
    answers = [
      "It is certain",
      "It is decidedly so",
      "Without a doubt",
      "Yes, definitely",
      "You may rely on it",
      "As I see it, yes",
      "Most likely",
      "Outlook good",
      "Yes",
      "Signs point to yes",
      "Reply hazy try again",
      "Ask again later",
      "Better not tell you now",
      "Cannot predict now",
      "Concentrate and ask again",
      "Don't count on it",
      "My reply is no",
      "My sources say no",
      "Outlook not so good",
      "Very doubtful"
    ]

    if params['question'] == ""
      @answer = "You did not ask a question"
    elsif params['question'].last == "?"
      @answer = answers.sample
    else
      @answer = "Please ask a question"
    end
  end
end
