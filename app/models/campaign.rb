class Campaign < ApplicationRecord
  belongs_to :brand

  has_many :contracts, dependent: :destroy
end
