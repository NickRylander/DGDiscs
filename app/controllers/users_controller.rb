class UsersController < ApplicationController
    has_many :discs
    has_secure_password
end