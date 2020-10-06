class User < ActiveRecord::Base
    has_many :discs
    has_secure_password
end