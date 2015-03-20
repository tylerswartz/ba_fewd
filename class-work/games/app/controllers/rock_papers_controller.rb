class RockPapersController < ApplicationController
  def new
  end

  def show
    @player_throw = params[:id].to_i
    @robot_throw = rand(0..2)

    compare_hands(@player_throw,@robot_throw)


    if @player_won
      @outcome_partial = 'win'
    else
      @outcome_partial = 'lose'
    end
  end

  def compare_hands(player,robot)
  	if player == robot
  		#outcome_partial = 'tie'.
  		#need to create a tie partial. 
  	elsif player = 0 && robot = 1
  		#@outcome_partial = 'win'
  	end

  end
end
