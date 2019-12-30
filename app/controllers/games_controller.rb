class GamesController < ApplicationController

    def show
      game = Game.find(params[:id])
      options = {
        include: :player
      }
      render json: GameSerializer.new(game, options)
    end

    def index
      games = Game.all
      options = {
        include: [:player]
      }
      render json: GameSerializer.new(games, options)
    end

end
