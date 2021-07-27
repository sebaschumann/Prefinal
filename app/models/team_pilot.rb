class TeamPilot < ApplicationRecord
  belongs_to :pilot
  belongs_to :team
  belongs_to :championship

validates :pilot, :presence => true, :uniqueness => true
end
