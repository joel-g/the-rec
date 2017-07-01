class CreateArtists < ActiveRecord::Migration
  def change
    t.string :name
    t.text :about
    t.string :img_url
    t.timestamps
  end
end
