class Snippet < ApplicationRecord
  CATEGORIES = ["Ruby", "JavaScript", "CSS"]

  has_many :snippet_tags, dependent: :destroy
  has_many :tags, through: :snippet_tags
  validates :title, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
