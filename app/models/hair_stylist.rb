class HairStylist < ApplicationRecord
  belongs_to :salon
  #has_many :appointments
  #has_many :customers, through: :appointments
  has_many :services
end
