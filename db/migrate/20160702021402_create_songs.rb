class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.belongs_to :composer
      t.belongs_to :category
      t.string :name
      t.integer :price
      t.string :link
      t.string :tempo
      t.string :solo_difficulty
      t.string :arrangement_difficulty
      t.text :content
      t.timestamps
    end
  end
end
