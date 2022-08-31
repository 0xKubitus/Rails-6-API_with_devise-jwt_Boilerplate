class User < ApplicationRecord
	devise :database_authenticatable, :registerable,
    :jwt_authenticatable,
    jwt_revocation_strategy: JwtDenylist

  has_many :articles
  
  validates :email, presence: true
end