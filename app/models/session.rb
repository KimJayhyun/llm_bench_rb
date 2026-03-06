class Session < ApplicationRecord
  has_many :messages
  has_many :runs
  has_one :report
end
