class Bookmark < ApplicationRecord
  validates :list, uniqueness: { scope: :movie }
  validates :comment, length: { minimum: 6 }
  belongs_to :movie
  belongs_to :list
end
