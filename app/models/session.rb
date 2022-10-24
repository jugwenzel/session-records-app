class Session < ApplicationRecord
    has_many :participants
    
    validates :title, presence: true, length: { minimum: 5 }
    validates :date, presence: true
end
