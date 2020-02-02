class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name, null:false
      # t.references :feeling, type: :bigint,foreign_key: true
      # t.references :user,type: :bigint, foreign_key: true
      t.timestamps
    end
  end
end
