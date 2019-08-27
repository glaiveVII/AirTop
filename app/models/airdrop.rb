class Airdrop < ApplicationRecord
  # belongs_to :airdrop, class_name: "User"
  has_many :users
  validates :amount, presence: true
  # crypto make a : "ActiveModel::UnknownAttributeError:"
  validates :crypto, presence: true

  has_many :invites, dependent: :destroy

  # NEED TO CHANGE THE FAKER TO FORCES TO OBLIGE TO HAVE THE DATE
  # validates :start_date, presence: true
  # validates :end_date, presence: true
end
