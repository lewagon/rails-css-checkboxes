class CheatsheetTag < ApplicationRecord
  belongs_to :cheatsheet
  belongs_to :tag
end
