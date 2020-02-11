class MoviesController < ApplicationController

  def index
    @movie = Movie.all.includes(:user)
    
  end
  def create
    movie = Movie.create(movie_params)
    puts
    puts movie.inspect
    puts
    puts movie.valid?
    puts movie.errors.full_messages
    puts

    redirect_to movie_path(movie.id)

    # Movie.create(movie_params)
  end

  def show
    @movie = Movie.find(params[:id])
    # includes(:user)
    @comments = @movie.comments.includes(:user)
    @comment = @movie.comments.new

    render :show

    # redirect_to movie_path(@comments)
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :image, :text,:feeling_id).merge(user_id: current_user.id)
  end

end
