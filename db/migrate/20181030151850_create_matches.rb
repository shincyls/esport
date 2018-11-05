class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :name
      t.string :description
      t.references :team_home
      t.references :team_away
      t.datetime :match_start
      t.datetime :match_end
      t.string :question_1
      t.string :question_2
      t.string :question_3
      t.timestamps
    end
  end
end
