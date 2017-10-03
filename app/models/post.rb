class Post < ApplicationRecord
  SECTIONS = ["Health and Beauty", "Programming", "Book", "Eat and drink", "Other"]
  enum section: SECTIONS
  validates :title, :content, :section, presence: true
end
