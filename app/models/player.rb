class Player < ApplicationRecord

  belongs_to :team, optional: true
  has_many :appearances
  has_many :ratings, dependent: :destroy

  validates :last_name, presence: true

end
