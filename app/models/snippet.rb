class Snippet < ApplicationRecord
  CATEGORIES = ["Ruby", "JavaScript", "CSS"]

  has_many :snippet_tags
  has_many :tags, through: :snippet_tags
  validates :title, presence: true
  validates_inclusion_of :category, in: CATEGORIES
end
