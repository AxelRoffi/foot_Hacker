class Team < ApplicationRecord
  has_many :players
  has_many :appearances

  validates :name, presence: true, uniqueness: true

end
