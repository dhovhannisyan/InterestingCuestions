class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :subject
      t.references :question_group, foreign_key: true
      t.string :rigth_answer

      t.timestamps
    end
  end
end
