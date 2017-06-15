class Rating < ApplicationRecord
  belongs_to :game
  belongs_to :player
  belongs_to :user

  validates :score, :inclusion => 0..10
end
