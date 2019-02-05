class Show < ApplicationRecord
  has_many :episodes
  validates :title, presence: true, uniqueness: true
end
