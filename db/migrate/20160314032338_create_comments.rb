class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :food_id
      t.string :customer_name
      t.integer :rating
      t.string :avatar_url

      t.timestamps null: false
    end
  end
end
