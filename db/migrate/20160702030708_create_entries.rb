class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :composer
      t.integer :price
      t.string :publication_type
      t.string :first_part
      t.string :second_part
      t.string :third_part
      t.string :fourth_part
      t.string :fifth_part
      t.string :tempo
      t.string :arrangement_difficulty
      t.string :solo_difficulty
      t.text :post_content
      t.string :leader
      t.string :album_name
      t.string :label_info
      t.string :personnel
      t.string :date_recorded
      t.text :composer_biography
      t.string :product_url
    end
  end
end
