class Episode < ApplicationRecord
  belongs_to :show
  has_many :actor_episodes, dependent: :destroy
  has_many :actors, through: :actor_episodes
  validates :title, presence: true, uniqueness: {scope: :show}

  def date_formatted
    self.date.strftime('%b %d %y')
  end

  def self.search(query)
    Episode.where('title LIKE ?', "%#{query}%")
  end
end
