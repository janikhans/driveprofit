class Lead < ApplicationRecord
  validates :email, presence: true

  validates :hrs, :distance,
    presence: true
end
