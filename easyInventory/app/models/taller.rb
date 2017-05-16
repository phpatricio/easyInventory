class Taller < ApplicationRecord
  has_many :producto
  validates :fecha, presence: true
end
