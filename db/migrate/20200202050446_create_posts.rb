class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :text, null:false
      t.references :movie,type: :bigint, foreign_key: true
      t.references :feeling,type: :bigint, foreign_key: true
      t.references :user,type: :bigint, foreign_key: true
      t.timestamps
    end
  end
end
