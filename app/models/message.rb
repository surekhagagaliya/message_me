class Message < ApplicationRecord
  # Relationships
  belongs_to :user

  # Validations
  validates :body, presence: true

  # scope
  scope :custom_display, -> { order(:created_at).last(20) }
end
