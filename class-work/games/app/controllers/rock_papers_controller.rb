class RockPapersController < ApplicationController
  def new
  end

  def show
    @player_throw = params[:id].to_i
    @robot_throw = rand(0..2)

    compare_hands(@player_throw,@robot_throw)
  end

  def compare_hands(player,robot)
  	if player == robot
  		@outcome_partial = 'tie' 
  	elsif player = 0 && robot = 1
  		@outcome_partial = 'lose'
  	elsif player = 0 && robot = 2
  		@outcome_partial = 'win'
  	elsif player = 1 && robot = 0
  		@outcome_partial = 'win'
  	elsif player = 1 && robot = 2
  		@outcome_partial = 'lose'
  	elsif player = 2 && robot = 0
  		@outcome_partial = 'lose'  	
  	elsif player = 2 && robot = 1
  		@outcome_partial = 'win'  	  		  	
  	end
  end
end
