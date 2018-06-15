class Thought < ApplicationRecord
    belongs_to :book
    has_many :replies
end
