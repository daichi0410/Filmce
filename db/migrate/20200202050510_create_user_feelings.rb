class CreateUserFeelings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_feelings do |t|
      t.references :feeling, type: :bigint,foreign_key: true
      t.references :user, type: :bigint,foreign_key: true
      t.timestamps
    end
  end
end
