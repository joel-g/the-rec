class CreateEvents < ActiveRecord::Migration
  def change
    create_table do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :location
      t.timestamps
  end
end
