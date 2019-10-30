class User < ApplicationRecord
  validates :name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]
  has_many :posts
  has_many :likes
  has_many :followers, through: :likes, source: :user

  def self.from_omniauth(auth)  
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|    
      user.email = auth.info.email    
      user.password = Devise.friendly_token[0,20]    
      user.name = auth.info.name
      end
    end
end
