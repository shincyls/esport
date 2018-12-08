class CreateBrackets < ActiveRecord::Migration[5.2]
  def change
    create_table :brackets do |t|
      t.string :title
      t.string :code
      t.string :remarks
      t.timestamps
    end
  end
end
