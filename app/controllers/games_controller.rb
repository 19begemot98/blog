class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    @games = current_user.games.paginate(page: params[:page], per_page: 10).order(:title)
  end

  def show
  end

  def new
    @game = current_user.games.build
  end

  def edit
  end

  def create
    @game = current_user.games.build(game_params)

    if @game.save
      redirect_to @game, notice: 'Игра успешно создана.'
    else
      render :new
    end
  end

  def update
    if @game.update(game_params)
      redirect_to @game, notice: 'Игра успешно обновлена.'
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Игра была успешно удалена.' }
      format.json { head :no_content }
    end
  end

  private

  def set_game
    @game = current_user.games.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :developer, :genre, :platform, :release_date)
  end
end
