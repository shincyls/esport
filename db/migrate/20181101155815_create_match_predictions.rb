class CreateMatchPredictions < ActiveRecord::Migration[5.2]
  def change
    create_table :match_predictions do |t|
      t.references :user
      t.references :tournament
      t.references :match
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.string :answer_4
      t.string :answer_5
      t.integer :score_1, default: 0
      t.integer :score_2, default: 0
      t.integer :score_3, default: 0
      t.integer :score_4, default: 0
      t.integer :score_5, default: 0
      t.integer :scores, default: 0
      t.timestamps
    end
  end
end
