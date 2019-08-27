class Invite < ApplicationRecord
  belongs_to :airdrop
  belongs_to :user
end
