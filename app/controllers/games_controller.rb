class GamesController < ApplicationController

    def show
      game = Game.find(params[:id])
      options = {
        include: [:player]
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

    def create
      game = Game.create(score: params[:score], level: params[:level], player: params[:player])
      options = {
        include: [:player]
      }
      render json: GameSerializer.new(game, options)
    end

    def destroy
      game = Game.find(params[:id])
      game.destroy
      render json: GameSerializer.new(game)
    end

end
