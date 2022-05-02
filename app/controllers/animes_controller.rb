# frozen_string_literal: true

class AnimesController < ApplicationController
  # GET /
  def index
    @animes = Anime.all
    render json: @animes
  end

  # GET /anime/:id
  def show
    @anime = Anime.find(params[:id])
    render json: @anime
  end

  # POST /anime/:id
  def create
    @anime = Anime.new(anime_params)
    if @anime.save
      render json: @anime
    else
      render json: { errors: @anime.errors }, status: :unprocessable_entity
    end
  end

  # PATCH /anime/:id
  def update
    @anime = Anime.find(params[:id])
    if @anime.update(anime_params)
      render json: @anime
    else
      render json: { errors: @anime.errors }, status: :unprocessable_entity
    end
  end

  # POST /anime/:id/episodes
  def add_episode
    @anime = Anime.find(params[:id])
    @anime.episodes.create(params[:episode_params])
    render json: @anime
  end

  # DELETE /anime/:id
  def destroy
    @anime = Anime.find(params[:id])
    @anime.destroy
    render json: { message: 'Anime deleted' }, status: :ok
  end

  private

  def anime_params
    params.require(:anime).permit!
  end
end
