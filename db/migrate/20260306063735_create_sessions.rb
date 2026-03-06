class CreateSessions < ActiveRecord::Migration[8.1]
  def change
    create_table :sessions do |t|
      t.string :title
      t.text :system_prompt
      t.string :status

      t.timestamps
    end
  end
end
