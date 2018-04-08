class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :contracts, dependent: :destroy

  has_many :campaigns, through: :contracts

  has_many :daily_reports, dependent: :destroy

  has_many :payouts, through: :daily_reports

  def full_name
    "#{first_name} #{last_name}"
  end
end
