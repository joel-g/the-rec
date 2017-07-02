class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.text :about
      t.string :img_url
      t.timestamps
    end
  end
end
