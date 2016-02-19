class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :thumbnail_url
      t.string :image_url
      t.integer :rating

      t.timestamps null: false
    end
  end
end
