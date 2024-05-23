class Movie < ApplicationRecord
  has_many :bookmarks
  validates :overview, :title, presence: true;
end
