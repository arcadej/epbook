class CreateMagagines < ActiveRecord::Migration
  def change
    create_table :magagines do |t|
      t.string :mgcode
      t.string :mgname
      t.string :publisher
      t.date :publisheddate
      t.integer :volume
      t.integer :number
      t.number :price

      t.timestamps
    end
  end
end
