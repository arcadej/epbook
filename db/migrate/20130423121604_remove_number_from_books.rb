class RemoveNumberFromBooks < ActiveRecord::Migration
  def up
    remove_column :books, :number
  end

  def down
    add_column :books, :number, :integer
  end
end
