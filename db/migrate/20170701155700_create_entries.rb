class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
     t.string :title, null: false
     t.text :body, null: false
     t.string :img_url
     t.timestamps
    end
  end
end
