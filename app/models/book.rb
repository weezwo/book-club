class Book < ApplicationRecord
    belongs_to :club
    
    validates :title, presence: :true
end
