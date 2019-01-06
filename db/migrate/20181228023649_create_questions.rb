class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :match
      t.string :question
      t.timestamps
    end
  end
end
