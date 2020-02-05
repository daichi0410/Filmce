class MoviesController < ApplicationController
  def create
    movie = Movie.create(movie_params)
    puts
    puts movie.inspect
    puts
    puts movie.valid?
    puts movie.errors.full_messages
    puts

    # Movie.create(movie_params)
    redirect_to root_path
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :image, :text,:feeling_id).merge(user_id: current_user.id)
  end

end
