class Movie < ApplicationRecord
  has_many :bookmarksg
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end
