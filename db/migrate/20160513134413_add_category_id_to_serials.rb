class AddCategoryIdToSerials < ActiveRecord::Migration[5.0]
  def change
    add_column :serials, :category_id, :integer
  end
end
