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
      t.string :question_1, default: "Which team will triumph and be victorious in this series?"
      t.string :question_2, default: "Which player will have most death?"
      t.string :question_3, default: "Which player will have the best score/KDA? (kill, death and assist)"
      t.string :question_4, default: "Which team to first score 10 kills?"
      t.string :question_5, default: "Which team will produce the MVP of the match?"
      t.references :bracket
      t.references :tournament
      t.timestamps
    end
  end
end
