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

  def create
    player = Player.find_or_create_by(name: params[:name])
    options = {
      include: [:games]
    }
    render json: PlayerSerializer.new(player, options)
  end

  def destroy
    player = Player.find(params[:id])
    player.destroy
    render json: PlayerSerializer.new(player)
  end

end
