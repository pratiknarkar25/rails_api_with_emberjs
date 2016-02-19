class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    movies = Movie.all
    render json: movies
  end

  def show
    render json: @movie
  end

  def new
    @movie = Movie.new
    render json: @movie
  end

  def create
    @movie = Movie.new(movie_params)    
    if @movie.save
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def update
    if @movie.update(movie_params)
      render :show, status: :ok, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def destroy
    render :nothing => true, :status => 204 if @movie.destroy
  end

  private
  
  # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Movie.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def movie_params
    params.require(:movie).permit(:title, :description, :thumbnail_url, :image_url, :rating)
  end
end