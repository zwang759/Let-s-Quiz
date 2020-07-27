class CreateQuestionUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :question_users do |t|

      t.timestamps
    end
  end
end
