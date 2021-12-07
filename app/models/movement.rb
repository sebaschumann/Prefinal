class Movement < ApplicationRecord
  paginates_per 50
  belongs_to :account


  validates_numericality_of :amount, greater_than_or_equal_to: 0
  validates :description, :presence => true

  def tipo
  if movement_type == 1
    "Débito"
  else
    "Crédito"
  end
end
end
