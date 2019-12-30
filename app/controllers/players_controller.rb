class PlayersController < ApplicationController

  def show
    player = Player.find(params[:id])
    options = {
      include: :score
    }
    render json: PlayerSerializer.new(player, options)
  end
  
end
