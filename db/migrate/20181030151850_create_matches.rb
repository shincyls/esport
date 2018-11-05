class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :name
      t.string :description
      t.string :team_home
      t.string :team_away
      t.datetime :match_start
      t.datetime :match_end
      t.string :question_1
      t.string :question_2
      t.string :question_3
      t.timestamps
    end
  end
end
