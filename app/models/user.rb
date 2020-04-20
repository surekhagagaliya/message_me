class User < ApplicationRecord
  # Relationships
  has_many :messages, dependent: :destroy
  # Validations
  validates :username, presence: true, length: {minimum: 3, maximum: 15}
  has_secure_password
end
