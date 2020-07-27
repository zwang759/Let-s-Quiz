class Question < ApplicationRecord
  belongs_to :user
  has_many :question_tags
  has_many :tags, through: :question_tags
  has_many :like_unlike_questions
  has_many :likeOrUnlike, through: :like_unlike_questions
end
