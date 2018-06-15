class User < ApplicationRecord
    has_many :user_clubs
    has_many :clubs, through: :user_clubs
end
