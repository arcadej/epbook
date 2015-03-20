class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :ISBN
      t.string :author
      t.string :publisher
      t.date :publisheddate
      t.integer :price

      t.timestamps
    end
  end
end
