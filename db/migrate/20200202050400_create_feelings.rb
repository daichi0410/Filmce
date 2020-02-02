class CreateFeelings < ActiveRecord::Migration[5.2]
  def change
    create_table :feelings do |t|
      t.string :name, null:false
      # t.bigint :user_id, foreign_key: true
      # t.references :user, type: :integer, foreign_key: true
      # t.references :movie, type: :bigint,foreign_key: true
      t.timestamps
    end
  end
end
#