class Invite < ApplicationRecord
  belongs_to :airdrop
  belongs_to :user
  # validates :email, presence: true
  # validates :airdrop_id, presence: true
end
