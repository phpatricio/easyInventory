class Movimiento < ApplicationRecord
  has_many :producto
  validates :fecha, presence: true
end
