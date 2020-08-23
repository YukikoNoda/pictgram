class Comment < ApplicationRecord
  validates :topic_id, presence: true
  validates :user_id, presence: true
  validates :comment, presence: true

  belongs_to :topic
end
