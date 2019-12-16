class Task < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, length: {minimum: 3, maximum: 30}
    validates :description, presence: true, length: {minimum: 10, maximum: 50}
    validates :day, presence: true, length: { minimum: 8, maximum: 8}

end
