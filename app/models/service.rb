class Service < ApplicationRecord
  belongs_to :hair_stylist
  has_many :appointments
  has_many :customers, through :appointments
end
