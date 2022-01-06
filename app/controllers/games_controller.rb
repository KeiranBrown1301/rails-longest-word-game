class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.shuffle.first(10)
  end

  def score
    if @letters.include?(params[:word])
      "Cogratulations! #{params[:word]} is a valid English word!"
    else
      "Sorry but #{params[:word]} cannot be build out of #{@letters}"
    end
  end
  # Still struglling with the logic of this one...
end
