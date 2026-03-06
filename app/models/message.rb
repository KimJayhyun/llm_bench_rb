class Message < ApplicationRecord
  belongs_to :session
  has_many :runs
end
