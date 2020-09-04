class Cheatsheet < ApplicationRecord
  belongs_to :language
  has_many :cheatsheet_tags
  has_many :tags, through: :cheatsheet_tags
end
