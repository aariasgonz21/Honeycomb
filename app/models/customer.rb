class Customer < ApplicationRecord
  has_many :appointments
  has_many :hair_stylists, through: :appointments
  belongs_to :hairtype
  before_save { email.downcase! }  

  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 30 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
end
