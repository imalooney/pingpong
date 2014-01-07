class GamesController < ApplicationController
  def create
    # Start game between player and clicked on opponent
    @game = current_user.games.build(opponent_id: params[:opponent_id])
    if @game.save
      flash[:notice] = "Game started."
      redirect_to root_url
    else
      flash[:error] = "Unable to start that game."
      redirect_to root_url
    end
  end

  def destroy
    @game = current_user.games.find(params[:id])
  end
end
