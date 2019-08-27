class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  #for device_invitable :
  # devise :database_authenticatable, :confirmable, :invitable
  # devise :database_authenticatable, :confirmable, :invitable, invite_for: 0

  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # here you can have create airdrops event
  # or have airdrops event due to the fact that you have
  # been invited through the table invite by someone
  # we could have rename to make things clearer !
  # alias :created_airdrops :airdrops
  # alias :invited_airdrops :invites

  # instead of having this to make it more understandable
  has_many :airdrops
  has_many :invites

  validates :email, presence: true
  validates :public_key, presence: true
  validates :nickname, presence: true
end
