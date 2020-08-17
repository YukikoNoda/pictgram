class AddTopicIdToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :topic_id, :integer, :after => :user_id
  end
end
