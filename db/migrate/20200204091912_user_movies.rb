class UserMovies < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_movies
  end
end
