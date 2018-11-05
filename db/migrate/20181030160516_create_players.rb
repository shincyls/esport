class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :nickname
      t.references :team
      t.string :description
      t.timestamps
    end
  end
end
