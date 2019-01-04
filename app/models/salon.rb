class Salon < ApplicationRecord
  has_many :hair_stylists
  has_many :services, through: :hair_stylists
  has_many :appointments, through: :services
  has_many :customers, through: :appointments
end
