class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_uniqueness_of :user_name, :email
  validates :first_name, presence: true, length: {minimum: 2, maximum: 20}
  validates :last_name, presence: true, length: {minimum: 2, maximum: 20}
  validates :user_name, presence: true, length: {minimum: 2, maximum: 20}
  validates :email, presence: true, length: {minimum: 2, maximum: 40}
end
