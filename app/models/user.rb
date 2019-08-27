class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  #for device_invitable :
  # devise :database_authenticatable, :confirmable, :invitable
  # devise :database_authenticatable, :confirmable, :invitable, invite_for: 0

  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :airdrops
  has_many :invites

  validates :email, presence: true
  validates :public_key, presence: true
  validates :nickname, presence: true
end
