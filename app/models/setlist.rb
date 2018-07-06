class Setlist < ApplicationRecord
  has_and_belongs_to_many :songs

  validates :name, :songs, presence: true
end
