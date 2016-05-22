class AddSerialIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :serial_id, :integer
  end
end
