class FeelingsController < ApplicationController

  def index
    @feeling = Feeling.find(1).includes(:users, :movies , :user_feelings)
  end

  def show
    @feeling = Feeling.find(params[:id])
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  private
  def feeling_params
    params.require(:feeling).permit(
      movies_attributes:[:id,:name,:text,:image]
    )
  end

end