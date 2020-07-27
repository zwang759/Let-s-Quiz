class CreateUserLikeUnlikeQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_like_unlike_questions do |t|

      t.timestamps
    end
  end
end
