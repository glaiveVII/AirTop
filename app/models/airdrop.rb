class Airdrop < ApplicationRecord
  belongs_to :airdrop, class_name: "User"

  validates :amount, presence: true
  validates :crypto, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
