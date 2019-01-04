class HairStylist < ApplicationRecord
  belongs_to :salon
  
  has_many :services
  has_many :appointments, through: :services
  has_many :customers, through: :appointments
end
