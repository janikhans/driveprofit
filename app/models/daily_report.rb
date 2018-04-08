class DailyReport < ApplicationRecord
  belongs_to :user

  validates :ride_count, presence: true

  validates :date,
    uniqueness: {
      scope: :user,
      message: 'only one daily report per user'
    }

  after_create :payout_user

  has_one :payout

  def payout_user
    create_payout(
      amount: user.campaigns.sum(&:price) * ride_count
    )
  end
end
