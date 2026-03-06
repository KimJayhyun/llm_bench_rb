class CreateRuns < ActiveRecord::Migration[8.1]
  def change
    create_table :runs do |t|
      t.references :session, null: false, foreign_key: true
      t.references :message, null: false, foreign_key: true
      t.string :llm_model
      t.text :response
      t.integer :latency_ms
      t.integer :input_tokens
      t.integer :output_tokens

      t.timestamps
    end
  end
end
