class RemoveEmbedVideos < ActiveRecord::Migration[7.0]
  def change
    remove_column :videos, :embed
  end
end
