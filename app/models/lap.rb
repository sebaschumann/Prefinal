class Lap < ApplicationRecord
  belongs_to :pilot
  belongs_to :race
end
