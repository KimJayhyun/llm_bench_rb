class CreateJudgements < ActiveRecord::Migration[8.1]
  def change
    create_table :judgements do |t|
      t.references :run, null: false, foreign_key: true
      t.integer :score
      t.text :reasoning
      t.string :judge_model

      t.timestamps
    end
  end
end
