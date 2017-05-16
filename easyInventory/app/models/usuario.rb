class Usuario < ApplicationRecord
  has_many :ventum
  validates :fecha, presence: true
end
