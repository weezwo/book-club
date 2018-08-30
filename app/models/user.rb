class User < ApplicationRecord
    has_many :user_clubs
    has_many :clubs, through: :user_clubs
    has_many :user_books
    has_many :books, through: :user_books
    has_many :thoughts
    has_many :replies

    validates :username, presence: true, uniqueness: true


    has_secure_password
end
