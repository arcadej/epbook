class AddAcceptionToUser < ActiveRecord::Migration
  def change
    add_column :users, :Acception, :boolean
  end
end
