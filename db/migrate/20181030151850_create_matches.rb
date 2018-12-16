class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :name
      t.string :description
      t.references :team_home, default: 1
      t.references :team_away, default: 1
      t.references :team_won, default: 1
      t.integer :team_home_won, default: 0
      t.integer :team_away_won, default: 0
      t.datetime :match_start
      t.datetime :match_end
      t.text :questions
      t.string :question_1
      t.string :question_2
      t.string :question_3
      t.string :question_4
      t.string :question_5
      t.references :bracket
      t.references :tournament
      t.timestamps
    end
  end
end
