class AddLastPopulateToTournaments < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :last_populate, :datetime
  end
end
