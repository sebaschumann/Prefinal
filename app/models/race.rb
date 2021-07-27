class Race < ApplicationRecord
  paginates_per 10
  belongs_to :championship
  belongs_to :circuit

  has_many :races
  has_many :laps
end
