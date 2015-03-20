class AddBookIdToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :book_id, :integer
  end
end
