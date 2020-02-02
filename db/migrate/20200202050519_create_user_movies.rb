class CreateUserMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :user_movies do |t|
      t.references :movie, type: :bigint,foreign_key: true
      t.references :user, type: :bigint,foreign_key: true
      t.timestamps
    end
  end
end
