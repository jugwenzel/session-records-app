class Participant < ApplicationRecord
  include Visible

  belongs_to :session

  validates :name, presence: true
  validates :role, presence: true
  
end
