class Actor < ApplicationRecord
  has_many :actor_episodes, dependent: :destroy
  has_many :episodes, through: :actor_episodes
  validates :name, presence: true, uniqueness: true
end
