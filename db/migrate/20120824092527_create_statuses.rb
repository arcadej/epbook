class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.boolean :existance
      t.string :rental

      t.timestamps
    end
  end
end
