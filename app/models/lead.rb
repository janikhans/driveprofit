class Lead < ApplicationRecord
  attr_accessor :sources

  validates :email,
    format: {
      with: Devise.email_regexp,
      message: 'is not a valid email format'
    }

  validates :hrs, :distance,
    presence: true
end
