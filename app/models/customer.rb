class Customer < ApplicationRecord
  has_many :appointments
  has_many :hair_stylists, through: :appointments
  belongs_to :hairtypes
end
