class Lead < ApplicationRecord
  attr_accessor :sources
  
  validates :email, presence: true

  validates :hrs, :distance,
    presence: true
end
