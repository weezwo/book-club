class Book < ApplicationRecord
    belongs_to :club
    has_many :thoughts
    has_many :user_books
    has_many :users, through: :user_books
    
    validates :title, presence: :true
end
