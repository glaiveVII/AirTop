class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :airdrops

  validates :email, presence: true
  validates :public_key, presence: true
  validates :nickname, presence: true
end
