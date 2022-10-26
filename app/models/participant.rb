class Participant < ApplicationRecord
  belongs_to :session

  validates :name, presence: true
  validates :role, presence: true

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
