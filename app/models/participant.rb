class Participant < ApplicationRecord
  belongs_to :session

  validates :name, presence: true
  validates :role, presence: true
end
