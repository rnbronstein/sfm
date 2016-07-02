class CreateComposers < ActiveRecord::Migration[5.0]
  def change
    create_table :composers do |t|
      t.string :full_name
      t.datetime :date_born
      t.datetime :date_died
      t.text :biography

      t.timestamps
    end
  end
end
