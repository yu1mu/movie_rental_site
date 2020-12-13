class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  COLUMNS = %i(email, nick_name) 

  has_many :moviequeues, dependent: :destroy
  has_many :movies, :through => :moviequeues
  has_many :orders, dependent: :destroy   
  has_many :ratings, dependent: :destroy   
end
