class Megane < ApplicationRecord
    validates :title, presence: true
    validates :name, presence: true
    validates :content, length: {minimum:5, maximum:255}

end