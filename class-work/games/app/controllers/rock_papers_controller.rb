class RockPapersController < ApplicationController
  def new
  end

  def show
    @player_throw = params[:id].to_i
    @robot_throw = rand(0..2)
    @player_won = (@player_throw > @robot_throw)

    if @player_won
      @outcome_partial = 'win'
    else
      @outcome_partial = 'lose'
    end
  end
end
