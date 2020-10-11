class Disc < ActiveRecord::Base
    belongs_to :user

    validates :name, :brand, :color, :speed, :glide, :turn, :fade, presence: true
end