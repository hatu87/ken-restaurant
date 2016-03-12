class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :image_url
      t.integer :section_id

      t.timestamps null: false
    end
  end
end
