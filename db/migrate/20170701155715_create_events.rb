class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :description
      t.date :date, null: false
      t.string :location, null: false
      t.integer :user_id
      t.timestamps
    end
  end
end
