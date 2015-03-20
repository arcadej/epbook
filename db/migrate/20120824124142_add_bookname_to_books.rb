class AddBooknameToBooks < ActiveRecord::Migration
  def change
    add_column :books, :bookname, :string
  end
end
