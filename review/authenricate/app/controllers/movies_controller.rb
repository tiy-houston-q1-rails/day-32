class MoviesController < ApplicationController

  before_action :authenticate_user!

  def index
    @movies = Movie.page(params[:page])
  end


end
