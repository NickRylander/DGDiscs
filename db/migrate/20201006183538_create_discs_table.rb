class CreateDiscsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :discs do |t|
      t.string :brand
      t.string :color
      t.integer :speed
      t.integer :glide
      t.integer :turn
      t.integer :fade
      t.integer :user_id

      t.timestamps
    end
  end
end
