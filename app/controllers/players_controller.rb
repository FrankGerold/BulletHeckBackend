class PlayersController < ApplicationController

  def show
    player = Player.find(params[:id])
    options = {
      include: [:games]
    }
    render json: PlayerSerializer.new(player, options)
  end

  def index
    players = Player.all
    options = {
      include: [:games]
    }
    render json: PlayerSerializer.new(players, options)
  end

end
