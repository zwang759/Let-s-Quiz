class CreateQuestionTags < ActiveRecord::Migration[6.0]
  def change
    create_table :question_tags do |t|

      t.timestamps
    end
  end
end
