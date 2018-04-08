class Contract < ApplicationRecord
  belongs_to :campaign
  belongs_to :user

  validates :campaign,
    presence: true,
    uniqueness: {
      scope: :user,
      message: 'is already assigned to this user'
    }

  delegate :brand, to: :campaign
end
