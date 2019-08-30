class Invite < ApplicationRecord
  # ici comme getter et stter
  # rails smart enough pour creer une methode pour acceder
  # au airdorp donc invite.airdrop marche !!!
  belongs_to :airdrop
  belongs_to :user
  # validates :email, presence: true
  # validates :airdrop_id, presence: true
end
