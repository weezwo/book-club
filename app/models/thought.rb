class Thought < ApplicationRecord
    belongs_to :book
    belongs_to :user
    has_many :replies

    # validates :title, presence: true
    # validates :associated_page, presence: {message: 'must be present. That means !'}
    validate do |thought|
        thought.errors.add(:base, 'you need a title') if thought.title.blank?
        thought.errors.add(:base, 'your title is too long (try moving some content to the body)') if thought.title.length > 200
        thought.errors.add(:base, "you\'ll have to tell us where you are in the book") if thought.associated_page.blank?
    end
end
