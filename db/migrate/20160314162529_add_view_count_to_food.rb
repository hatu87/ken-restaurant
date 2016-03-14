class AddViewCountToFood < ActiveRecord::Migration
  def change
    add_column :foods, :view_count, :integer, default: 0
  end
end
