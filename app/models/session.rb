class Session < ApplicationRecord
  has_many :messages
  has_many :runs
  has_one :report

  enum :status, { pending: 0, running: 1, completed: 2, failed: 3 }
end
