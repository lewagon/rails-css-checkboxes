class Snippet < ApplicationRecord
  belongs_to :category
  has_many :snippet_tags
  has_many :tags, through: :snippet_tags
  validates :title, presence: true
end
