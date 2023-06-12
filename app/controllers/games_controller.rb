class GamesController < ApplicationController
  def new
    @alphabet = [*('A'..'Z')]
    @letters = @alphabet.sample(10)
  end

  def score
    @word = params[:word]
    @letters = params[:letters]
    @word_array = @word.chars

    sum = 0
    @word_array.each do |letter|
      if @word_array.count(letter) > @letters.count(letter)
        sum += 1
        @message = 'error'
      end
    end

    if sum > 0
      @message = 'error'
    else
      @message = 'Congratulations!'

    end
  end
end
