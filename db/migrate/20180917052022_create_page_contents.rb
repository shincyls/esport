class CreatePageContents < ActiveRecord::Migration[5.2]
  def change
    create_table :page_contents do |t|
      t.string :name
      t.string :value
      t.string :description
      t.string :remark
      t.timestamps
    end
  end
end
