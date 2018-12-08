class CreateTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :tournaments do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.string :logo_url
      t.string :prize_1
      t.string :info_1
      t.string :prize_2
      t.string :info_2
      t.string :prize_3
      t.string :info_3
      t.boolean :display, default: true
      t.timestamps
    end
  end
end
