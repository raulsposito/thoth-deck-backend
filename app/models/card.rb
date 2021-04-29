class Card < ApplicationRecord
  scope :search_input, -> (query) { where('(LOWER(cards.title) LIKE :query)', query: "%#{query.strip.downcase}%")}
end