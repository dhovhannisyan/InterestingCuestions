class CreateQuestionGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :question_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
