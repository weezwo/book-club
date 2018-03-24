class Book < ApplicationRecord
    belongs_to :club
    has_many :thoughts
    
    validates :title, presence: :true
end
