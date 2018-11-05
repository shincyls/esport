class CreateMatchPredictions < ActiveRecord::Migration[5.2]
  def change
    create_table :match_predictions do |t|
      t.references :user
      t.references :match
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.timestamps
    end
  end
end
