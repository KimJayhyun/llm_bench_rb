class Run < ApplicationRecord
  belongs_to :session
  belongs_to :message
end
