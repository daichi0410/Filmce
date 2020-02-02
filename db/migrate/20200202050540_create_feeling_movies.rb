class CreateFeelingMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :feeling_movies do |t|
      t.references :feeling, type: :bigint,foreign_key: true
      t.references :movie, type: :bigint,foreign_key: true
      t.timestamps
    end
  end
end
