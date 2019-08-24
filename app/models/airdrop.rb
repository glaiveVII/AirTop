class Airdrop < ApplicationRecord
  belongs_to :airdrop, class_name: "User"

  validates :amount, presence: true
  validates :crypto, presence: true
  # NEED TO CHANGE THE FAKER TO FORCES TO OBLIGE TO HAVE THE DATE
  # validates :start_date, presence: true
  # validates :end_date, presence: true
end
