# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.destroy_all

tags = %w(Design Rails Product Startup HTML/CSS UX UI)
styles = %w(yellow green blue purple)
tags.each do |tag|
  Tag.create!(name: tag, style: styles.sample)
end