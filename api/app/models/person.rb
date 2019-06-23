class Person < ApplicationRecord
  has_secure_password
  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :phone,      presence: true
  validates :email,      presence: true, format: { with: /.*@.*/ }
end
