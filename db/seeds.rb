# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SnippetTag.destroy_all
Snippet.destroy_all
Tag.destroy_all

tags = %w(Shortcut Tip Snippet Basics Advanced Front-end Back-end)
tags.each do |tag|
  Tag.create!(name: tag)
end

r = Snippet.new(
  title: "Iteration in Ruby",
  code:
%{items.each |do| item
  puts item
end},
  category: "Ruby"
)
r.tags = [Tag.find_by(name: "Basics"), Tag.find_by(name: "Back-end")]
r.save

j = Snippet.new(
  title: "Iteration in JavaScript",
  code:
%{items.forEach((item) => {
  console.log(item)
});},
  category: "JavaScript"
)
j.tags = [Tag.find_by(name: "Basics"), Tag.find_by(name: "Snippet"), Tag.find_by(name: "Front-end")]
j.save

c = Snippet.new(
  title: "Background image",
  code: %{background: url("bg.png");},
  category: "CSS"
)
c.tags = [Tag.find_by(name: "Basics"), Tag.find_by(name: "Tip")]
c.save