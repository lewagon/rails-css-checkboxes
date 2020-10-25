# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.destroy_all
Category.destroy_all

tags = %w(Shortcut Tip Snippet Basics Advanced Front-end Back-end)
tags.each do |tag|
  Tag.create!(name: tag)
end


categories = %w(Ruby Javascript CSS)
categories.each do |category|
  Category.create(name: category, style: category.downcase)
end