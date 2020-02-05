class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render posts_index_path
    end
  end

  def show
    @user = User.find(params[:id])
    @movie = @user.movies
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end

end