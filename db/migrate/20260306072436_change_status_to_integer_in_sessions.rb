class ChangeStatusToIntegerInSessions < ActiveRecord::Migration[8.1]
  def change
      change_column :sessions, :status, :integer, default: 0
  end
end
