class Player < ApplicationRecord

  belongs_to :team, optional: true
  has_many :appearances
  
  validates :last_name, presence: true

end
