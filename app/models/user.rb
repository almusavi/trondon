class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :blogs

  validates :email, :name, :phone_number, presence: true
  validates :email, :phone_number, uniqueness: true
  validates :password, length: { minimum: 6 }
  validates :password, presence: true

end
