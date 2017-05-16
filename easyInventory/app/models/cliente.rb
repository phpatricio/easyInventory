class Cliente < ApplicationRecord
  has_many :producto
  validates :nombre, presence: true,
                    length: { minimum: 20 }
end
