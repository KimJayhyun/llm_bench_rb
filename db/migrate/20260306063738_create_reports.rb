class CreateReports < ActiveRecord::Migration[8.1]
  def change
    create_table :reports do |t|
      t.references :session, null: false, foreign_key: true
      t.string :file_path
      t.string :format

      t.timestamps
    end
  end
end
