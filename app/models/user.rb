class User < ActiveRecord::Base
    has_many :discs
    has_secure_password

    validates :username, :password, presence: true
    validates :email, uniqueness: true
end