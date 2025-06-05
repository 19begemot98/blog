class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    #@games = Game.all.order(:title)
    @games = Game.paginate(page: params[:page], per_page: 10).order(:title)

  end

  def show
  end

  def new
    @game = Game.new
  end

  def edit
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to @game, notice: 'Game was successfully created.'
    else
      render :new
    end
  end

  def update
    if @game.update(game_params)
      redirect_to @game, notice: 'Game was successfully updated.'
    else
      render :edit
    end
  end

 def destroy
  @game = Game.find(params[:id])
  @game.destroy
  respond_to do |format|
    format.html { redirect_to games_url, notice: 'Игра была успешно удалена.' }
    format.json { head :no_content }
  end
end

  private
    def set_game
      @game = Game.find(params[:id])
    end

    def game_params
      params.require(:game).permit(:title, :developer, :genre, :platform, :release_date)
    end
end
