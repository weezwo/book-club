class Club < ApplicationRecord
    validates :name, presence: true

    has_many :books
    has_many :user_clubs
    has_many :users, through: :user_clubs
end
