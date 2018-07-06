class Song < ApplicationRecord
  has_and_belongs_to_many :setlists

  validates :name, presence: true
end
