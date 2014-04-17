class HomeController < ApplicationController
  def index
    @movie = Movie.all
  end
end
