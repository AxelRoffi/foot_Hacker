class Profile < ApplicationRecord
  belongs_to :user

  validates :team_id, presence: true

end
