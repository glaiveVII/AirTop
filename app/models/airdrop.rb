class Airdrop < ApplicationRecord
  # belongs_to :airdroper, class_name: "User", foreign_key: "user_id"

  # here one important thing is that users table and airdrops
  # can be acces with two paths : one through invites or directly

  has_many :invites

  mount_uploader :photo, PhotoUploader

  # here is through invites
  has_many :users, through: :invites
  validates :amount, presence: true
  # crypto make a : "ActiveModel::UnknownAttributeError:"
  validates :crypto, presence: true

  has_many :invites, dependent: :destroy

  # NEED TO CHANGE THE FAKER TO FORCES TO OBLIGE TO HAVE THE DATE
  # validates :start_date, presence: true
  # validates :end_date, presence: true
end
