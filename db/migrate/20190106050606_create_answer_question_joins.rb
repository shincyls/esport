class CreateAnswerQuestionJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_question_joins do |t|
      t.references :match
      t.references :question
      t.references :answer
      t.timestamps
    end
  end
end
