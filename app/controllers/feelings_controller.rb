class FeelingsController < ApplicationController

  def index
    @feeling = Feeling.find(1).includes(:users, :movies , :user_feelings)
  end

  def show
    @feeling = Feeling.find(params[:id])
    @movie = Movie.new
  end

  def new
    @movie = Movie.new
    if @movie.save
      redirect_to toot_path
  else
    render :new
  end
  end
  
  def create
    @movie = Movie.new
    redirect_to root_path
  end




  private
  def feeling_params
    params.require(:feeling).permit(
      movies_attributes:[:id,:name,:text,:image]
    )
  end

end