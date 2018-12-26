class Appointment < ApplicationRecord
  belongs_to :customer
  belongs_to :hair_stylist
end
