class Session < ApplicationRecord
  has_many :participants
    
  validates :title, presence: true, length: { minimum: 5 }
  validates :date, presence: true

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
