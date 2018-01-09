class AddImgToQuestionGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :question_groups, :img, :string
  end
end
