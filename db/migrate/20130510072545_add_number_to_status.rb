class AddNumberToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :Number, :integer
  end
end
