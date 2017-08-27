class Status < ApplicationRecord
  validates :user_id, presence: true
  validates :challenge_id, presence: true
  validates_uniqueness_of :user_id, scope: [:challenge_id]

  belongs_to :user
  belongs_to :challenge

end
