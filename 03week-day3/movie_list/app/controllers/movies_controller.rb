class MoviesController < ApplicationController
  before_filter :find_movie, only: [:show, :edit, :update, :destroy]

  def show
    # @movie = Movie.find params[:id]
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new movie_params
    if @movie.save
      flash[:notice] = "You successfully save the movie to your collection"
      redirect_to root_path
    else 
      flash[:error] = "You are not finished yet"
      render :new
    end
  end

  def edit
    # @movie = Movie.find params[:id]
  end

  def update
    # @movie = Movie.new movie_params
    if @movie.update_attributes movie_params
      flash[:notice] = "You successfully update the movie details"
      redirect_to root_path
    else 
      flash[:error] = "You are not finished yet"
      render :edit
    end
  end

  def destroy
    # @movie = Movie.find params[:id]
    @movie.delete
    redirect_to root_path
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :year, :genre, :film_rating, :critic_rating, :description)
  end

  def find_movie
    @movie = Movie.find params[:id]
  end
end