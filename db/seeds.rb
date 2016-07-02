# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach('lib/assets/sfm_catalog.csv', headers: true) do |row|
  entry_hash = row.to_hash
  Entry.create(entry_hash)
end

Entry.all.each do |entry|
  Composer.create(full_name: entry.reformat_composer, biography: entry.composer_biography)
end

Entry.all.each do |entry|
  Category.create(category: entry.publication_type)
end

Entry.all.each do |entry|
  song = Song.new(name: entry.title, price: entry.price, link: entry.product_url, tempo: entry.tempo, solo_difficulty: entry.solo_difficulty, arrangement_difficulty: entry.arrangement_difficulty, content: entry.post_content)
  song.composer = Composer.find_by(full_name: entry.reformat_composer)
  song.category = Category.find_by(category: entry.publication_type)
  song.save
end
