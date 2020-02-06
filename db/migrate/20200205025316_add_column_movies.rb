class AddColumnMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :text, :text
    add_column :movies, :image, :text
    add_column :movies, :feeling_id, :integer 
  end
end
